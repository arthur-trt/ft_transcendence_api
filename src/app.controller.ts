import { Controller, Get, Param } from '@nestjs/common';
import { AppService } from './app.service';
import {
  ApiBearerAuth,
  ApiOperation,
  ApiResponse,
  ApiTags,
} from '@nestjs/swagger';

@Controller()
@ApiBearerAuth()
@ApiTags('api')
@Controller('cats')
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  @ApiOperation({ summary: "Respond Hello World!"})
  getBasicHello(): string {
    return this.appService.getBasicHello();
  }

  @Get(':name')
  getHello(@Param('name') name: string): string {
    return this.appService.getHello(name);
  }

  @Get('api/money')
  getMoney(): string
  {
    return this.appService.getMoney();
  }
}
