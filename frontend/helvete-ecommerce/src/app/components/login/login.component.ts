import { Component, Inject, OnInit } from '@angular/core';
import { OKTA_AUTH } from '@okta/okta-angular';
import { OktaAuth } from '@okta/okta-auth-js';
import OktaSignIn from '@okta/okta-signin-widget';
import helveteConfig from 'src/app/config/helvete-config';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit{

  oktaSignin: any;

  constructor(@Inject(OKTA_AUTH) private oktaAuth: OktaAuth) {

    this.oktaSignin = new OktaSignIn({
      logo: 'assets/images/logo_inv.png',
      baseUrl: helveteConfig.oidc.issuer.split('/oauth2')[0],
      clientId: helveteConfig.oidc.clientId,
      redirectUri: helveteConfig.oidc.redirectUri,
      authParams: {

        issuer: helveteConfig.oidc.issuer,
        scopes: helveteConfig.oidc.scopes
      }
    });
  }

  ngOnInit(): void {
    
    this.oktaSignin.remove();

    this.oktaSignin.renderEl({

      el: '#okta-sign-in-widget'},
      (response: any) => {

        if (response.status === 'SUCCESS') {
          this.oktaAuth.signInWithRedirect();
        }
      },
      (error: any) => {
        throw error;
      }
    );
  }

}
