import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: AdditionalProperties(
    pubName: 'xh_api',
    pubAuthor: 'Phan Nhat Quang',
  ),
  inputSpecFile: 'http://xuanhoang.xoontec.vn/swagger/v1/swagger.json',
  generatorName: Generator.dioNext,
  outputDirectory: 'xh_api',
  skipSpecValidation: true,
)
class CustomerData {}
