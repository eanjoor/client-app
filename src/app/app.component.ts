import { Component, OnInit } from '@angular/core';

import { Client } from './client';
import { ClientService } from './client.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent implements OnInit{
  title = 'Client List';
  clients: Client[] = [];

  constructor(private clientService: ClientService) { };

  ngOnInit(): void {
    this.getClients();
  }

  getClients(): void {
    this.clientService.getClients()
    .subscribe(clients => this.clients = clients);
  }

  add(name: string, alias: string, phone: string): void {
    name = name.trim();
	alias = alias.trim();
	phone = phone.trim();
    if (!name || !alias || !phone) { return; }
    this.clientService.addClient({ name, alias, phone } as Client)
      .subscribe(client => {
        this.clients.push(client);
      });
  }
}
