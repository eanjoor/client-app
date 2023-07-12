import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

import { Observable, of } from 'rxjs';
import { catchError, map, tap } from 'rxjs/operators';

import { Client } from './client';


@Injectable({ providedIn: 'root' })
export class ClientService {

  private serverUrl = 'http://localhost:3000/api/clients';  // Express server url

  httpOptions = {
    headers: new HttpHeaders({ 'Content-Type': 'application/json' })
  };

  constructor(private http: HttpClient) {}
 

  /** GET clients from the server */
  getClients(): Observable<Client[]> {
    return this.http.get<Client[]>(this.serverUrl)
      .pipe(
        tap(_ => this.log('fetched clients')),
        catchError(this.handleError<Client[]>('getClients', []))
      );
  }

  /** POST: add a new client to the server */
  addClient(client: Client): Observable<Client> {
    return this.http.post<Client>(this.serverUrl, client, this.httpOptions).pipe(
      tap((newClient: Client) => this.log(`added client ${newClient.name}`)),
      catchError(this.handleError<Client>('addClient'))
    );
  }
  
  private handleError<T>(operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      this.log(`${operation} failed: ${error.message}`);

      return of(result as T);
    };
  }

  private log(message: string) {
	console.log(`ClientService: ${message}`);
  }
}