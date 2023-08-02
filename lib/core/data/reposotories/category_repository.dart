


// import 'package:dartz/dartz.dart';
// import 'package:darrebni/core/data/models/apis/category_model.dart';
// import 'package:darrebni/core/data/models/common_respons.dart';
// import 'package:darrebni/core/data/network/endpoints/category_endpoints.dart';
// import 'package:darrebni/core/data/network/network_config.dart';
// import 'package:darrebni/core/enums/request_type.dart';
// import 'package:darrebni/core/utils/network_util.dart';
//
// class CategoryRepository {
//   Future<Either<String, List<CategoryModels>>> getAll() async {
//     try {
//       return NetworkUtil.sendRequest(
//           type: RequestType.GET,
//           url: CategoryEndpoints.getAll,
//           headers: NetworkConfig.getHeaders(needAuth: false),
//           ).then((response) {
//         CommonResponse<List<dynamic>> commonResponse =
//         CommonResponse.fromJson(response);
//
//         if (commonResponse.getStatus) {
//           List<CategoryModels>resultList=[];
//           commonResponse.data!.forEach(
//                 (element)
//             { resultList.add(CategoryModels.fromJson(element));
//               },
//           );
//           return Right(resultList);}
//          else {
//           return Left(commonResponse.message ?? '');
//         }
//       });
//     } catch (e) {
//       return Left(e.toString());
//     }
//   }
// }