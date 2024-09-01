import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { Country } from '../common/country';
import { map } from 'rxjs/operators'
import { Voivodeship } from '../common/voivodeship';

@Injectable({
  providedIn: 'root'
})
export class HelveteFormService {

  private countriesUrl = 'https://localhost:8443/api/countries';
  private voivodeshipsUrl = 'https://localhost:8443/api/voivodeships';

  constructor(private httpClient: HttpClient) { }

  getCountries(): Observable<Country[]> {

    return this.httpClient.get<GetResponseCountries>(this.countriesUrl).pipe(
      map(response => response._embedded.countries)
    );
  }

  getVoivodeships(theCountryCode: string): Observable<Voivodeship[]> {

    const searchVoivodeshipsUrl = `${this.voivodeshipsUrl}/search/findByCountryCode?code=${theCountryCode}`;

    return this.httpClient.get<GetResponseVoivodeships>(searchVoivodeshipsUrl).pipe(
      map(response => response._embedded.voivodeships)
    );
  }
}

interface GetResponseCountries {
  _embedded: {
    countries: Country[];
  }
}

interface GetResponseVoivodeships {
  _embedded: {
    voivodeships: Voivodeship[];
  }
}
