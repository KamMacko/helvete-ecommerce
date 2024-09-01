import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Country } from 'src/app/common/country';
import { Order } from 'src/app/common/order';
import { OrderItem } from 'src/app/common/order-item';
import { PaymentInfo } from 'src/app/common/payment-info';
import { Purchase } from 'src/app/common/purchase';
import { Voivodeship } from 'src/app/common/voivodeship';
import { CartService } from 'src/app/services/cart.service';
import { CheckoutService } from 'src/app/services/checkout.service';
import { HelveteFormService } from 'src/app/services/helvete-form.service';
import { HelveteValidators } from 'src/app/validators/helvete-validators';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css']
})
export class CheckoutComponent implements OnInit{

  checkoutFormGroup!: FormGroup;

  totalPrice: number = 0;
  totalQuantity: number =  0;

  creditCardMonths: number[] = [];
  creditCardYears: number[] = [];

  countries: Country[] = [];

  shippingAddressVoivodeships: Voivodeship[] = [];
  billingAddressVoivodeships: Voivodeship[] = [];

  stripePublishableKey: string = 'pk_test_51OCLWYAxyhVBZZLddmVYIq6BgKSSzbVrd9HXGPjSkgl66jl7Y6laQH71Mo50lV3SloUK07REAMAteTH6XeuRRlsk00CV1MYs2z';
  stripe = Stripe(this.stripePublishableKey);

  paymentInfo: PaymentInfo = new PaymentInfo();
  cardElement: any;
  displayError: any = "";

  isDisabled: boolean = false;

  constructor(private formBuilder: FormBuilder,
              private helveteFormService: HelveteFormService,
              private cartService: CartService,
              private checkoutService: CheckoutService,
              private router: Router) {}

  ngOnInit(): void {

    this.setupStripePaymentForm();
    
    this.reviewCartDetails();

    this.checkoutFormGroup = this.formBuilder.group({

      customer: this.formBuilder.group({
        firstName: new FormControl('', [Validators.required, Validators.minLength(2), HelveteValidators.notOnlyWhitespace]),
        lastName: new FormControl('', [Validators.required, Validators.minLength(2), HelveteValidators.notOnlyWhitespace]),
        email: new FormControl('',
                              [Validators.required, Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')])
      }),

      shippingAddress: this.formBuilder.group({
        street: new FormControl('', [Validators.required, Validators.minLength(2), HelveteValidators.notOnlyWhitespace]),
        city: new FormControl('', [Validators.required, Validators.minLength(2), HelveteValidators.notOnlyWhitespace]),
        country: new FormControl('', [Validators.required]),
        voivodeship: new FormControl('', [Validators.required]),
        zipCode: new FormControl('', [Validators.required, Validators.pattern('^[0-9]{2}-[0-9]{3}$')])
      }),

      billingAddress: this.formBuilder.group({
        street: new FormControl('', [Validators.required, Validators.minLength(2), HelveteValidators.notOnlyWhitespace]),
        city: new FormControl('', [Validators.required, Validators.minLength(2), HelveteValidators.notOnlyWhitespace]),
        country: new FormControl('', [Validators.required]),
        voivodeship: new FormControl('', [Validators.required]),
        zipCode: new FormControl('', [Validators.required, Validators.pattern('^[0-9]{2}-[0-9]{3}$')])
      })
    });

    this.helveteFormService.getCountries().subscribe(
      data => {
        console.log("Retrieved countries: " + JSON.stringify(data));
        this.countries = data;
      }
    );
  }

  setupStripePaymentForm() {
    
    var elements = this.stripe.elements();

    this.cardElement = elements.create('card', { hidePostalCode: true });

    this.cardElement.mount('#card-element');

    this.cardElement.on('change', (event: any) => {

      this.displayError = document.getElementById('card-errors');

      if(event.complete) {

        this.displayError.textContent = "";
      } else if (event.error) {

        this.displayError.textContent = event.error.message;
      }
    });
  }

  reviewCartDetails() {
    
    this.cartService.totalQuantity.subscribe(
      totalQuantity => this.totalQuantity = totalQuantity
    );

    this.cartService.totalPrice.subscribe(
      totalPrice => this.totalPrice = totalPrice
    );
  }

  get firstName() {

    return this.checkoutFormGroup.get('customer.firstName')
  }

  get lastName() {
    
    return this.checkoutFormGroup.get('customer.lastName')
  }

  get email() {
    
    return this.checkoutFormGroup.get('customer.email')
  }

  get shippingAddressStreet() {
    
    return this.checkoutFormGroup.get('shippingAddress.street')
  }

  get shippingAddressCity() {
    
    return this.checkoutFormGroup.get('shippingAddress.city')
  }

  get shippingAddressCountry() {
    
    return this.checkoutFormGroup.get('shippingAddress.country')
  }

  get shippingAddressVoivodeship() {
    
    return this.checkoutFormGroup.get('shippingAddress.voivodeship')
  }

  get shippingAddressZipCode() {
    
    return this.checkoutFormGroup.get('shippingAddress.zipCode')
  }

  get billingAddressStreet() {
    
    return this.checkoutFormGroup.get('billingAddress.street')
  }

  get billingAddressCity() {
    
    return this.checkoutFormGroup.get('billingAddress.city')
  }

  get billingAddressCountry() {
    
    return this.checkoutFormGroup.get('billingAddress.country')
  }

  get billingAddressVoivodeship() {
    
    return this.checkoutFormGroup.get('billingAddress.voivodeship')
  }

  get billingAddressZipCode() {
    
    return this.checkoutFormGroup.get('shippingAddress.zipCode')
  }

  copyShippingAddressToBillingAddress(event: Event) {

    if ((<HTMLInputElement>event.target).checked) {
      this.checkoutFormGroup.controls['billingAddress'].setValue(this.checkoutFormGroup.controls['shippingAddress'].value);

      this.billingAddressVoivodeships = this.shippingAddressVoivodeships;
    }
    else{

      this.checkoutFormGroup.controls['billingAddress'].reset();

      this.billingAddressVoivodeships = [];
    }
  }

  onSubmit(){

    if(this.checkoutFormGroup.invalid) {
      this.checkoutFormGroup.markAllAsTouched();
      return;
    }

    let order = new Order(this.totalQuantity, this.totalPrice);
    
    const cartItems = this.cartService.cartItems;

    let orderItems: OrderItem[] = [];
    for(let i=0; i < cartItems.length; i++) {

      orderItems[i] = new OrderItem(cartItems[i]);
    }

    let purchase = new Purchase();

    purchase.customer = this.checkoutFormGroup.controls['customer'].value;

    purchase.shippingAddress = this.checkoutFormGroup.controls['shippingAddress'].value;
    const shippingVoivodeship: Voivodeship = JSON.parse(JSON.stringify(purchase.shippingAddress.voivodeship));
    const shippingCountry: Country = JSON.parse(JSON.stringify(purchase.shippingAddress.country));
    purchase.shippingAddress.voivodeship = shippingVoivodeship.name;
    purchase.shippingAddress.country = shippingCountry.name;

    purchase.billingAddress = this.checkoutFormGroup.controls['billingAddress'].value;
    const billingVoivodeship: Voivodeship = JSON.parse(JSON.stringify(purchase.billingAddress.voivodeship));
    const billingCountry: Country = JSON.parse(JSON.stringify(purchase.billingAddress.country));
    purchase.billingAddress.voivodeship = billingVoivodeship.name;
    purchase.billingAddress.country = billingCountry.name;

    purchase.order = order;
    purchase.orderItems = orderItems;

    this.paymentInfo.amount = Math.round(this.totalPrice * 100);
    this.paymentInfo.currency = "PLN";
    this.paymentInfo.receiptEmail = purchase.customer.email;

    if (!this.checkoutFormGroup.invalid && this.displayError.textContent === "") {

      this.isDisabled = true;

      this.checkoutService.createPaymentIntent(this.paymentInfo).subscribe(
        (paymentIntentResponse) => {
          this.stripe.confirmCardPayment(paymentIntentResponse.client_secret,
            {
              payment_method: {
			  
                card: this.cardElement,
                billing_details: {
                  email: purchase.customer.email,
                  name: `${purchase.customer.firstName} ${purchase.customer.lastName}`,
                  address: {
                    line1: purchase.billingAddress.street,
                    city: purchase.billingAddress.city,
                    state: purchase.billingAddress.voivodeship,
                    postal_code: purchase.billingAddress.zipCode,
                    country: this.billingAddressCity?.value.code
                  }
                }
              }
            }, { handleActions: false})
            .then((result: any) =>{
			
              if (result.error) {
			  
                alert(`Wystąpił błąd:  ${result.error.message}`);
                this.isDisabled = false;
              } else {
			  
                this.checkoutService.placeOrder(purchase).subscribe({
                  next: (response: any) => {
                    alert(`Otrzymaliśmy Twoje zamówienie.\nJego numer to: ${response.orderTrackingNumber}`);

                    this.resetCart();
                    this.isDisabled = false;
                  },
                  error: (err: any) => {
                     alert(`Wystąpił błąd: ${err.message}`); 
                     this.isDisabled = false;                
                  }
                })
              }
            })
          }
        
      );
    } else {
      this.checkoutFormGroup.markAllAsTouched();
      return;
    }
    
  }

  resetCart() {
    
    this.cartService.cartItems = [];
    this.cartService.totalPrice.next(0);
    this.cartService.totalQuantity.next(0);
    this.cartService.persistCartItems();

    this.checkoutFormGroup.reset();

    this.router.navigateByUrl("/products");
  }

  getVoivodeships(formGroupName: string) {

    const formGroup = this.checkoutFormGroup.get(formGroupName);

    const countryCode = formGroup?.value.country.code;
    const countryName = formGroup?.value.country.name;

    console.log(`{formGroupName} country code: ${countryCode}`);
    console.log(`{formGroupName} country name: ${countryName}`);

    this.helveteFormService.getVoivodeships(countryCode).subscribe(
      data => {

        if (formGroupName === 'shippingAddress') {
          this.shippingAddressVoivodeships = data;
        } else {
          this.billingAddressVoivodeships = data;
        }

        formGroup?.get('voivodeship')?.setValue(data[0]);
      }
    );

  }
}
