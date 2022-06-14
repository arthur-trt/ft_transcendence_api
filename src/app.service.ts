import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(name: string): string {
    return `Hello ${name}!`;
  }

  getBasicHello(): string {
    return 'Hello World!';
  }

  getMoney(): string {
    return 'motherlode';
  }
}
