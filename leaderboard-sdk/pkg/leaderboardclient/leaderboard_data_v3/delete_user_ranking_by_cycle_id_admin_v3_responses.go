// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data_v3

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// DeleteUserRankingByCycleIDAdminV3Reader is a Reader for the DeleteUserRankingByCycleIDAdminV3 structure.
type DeleteUserRankingByCycleIDAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserRankingByCycleIDAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserRankingByCycleIDAdminV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserRankingByCycleIDAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserRankingByCycleIDAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserRankingByCycleIDAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserRankingByCycleIDAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserRankingByCycleIDAdminV3NoContent creates a DeleteUserRankingByCycleIDAdminV3NoContent with default headers values
func NewDeleteUserRankingByCycleIDAdminV3NoContent() *DeleteUserRankingByCycleIDAdminV3NoContent {
	return &DeleteUserRankingByCycleIDAdminV3NoContent{}
}

/*DeleteUserRankingByCycleIDAdminV3NoContent handles this case with default header values.

  User ranking deleted by cycle id
*/
type DeleteUserRankingByCycleIDAdminV3NoContent struct {
}

func (o *DeleteUserRankingByCycleIDAdminV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}][%d] deleteUserRankingByCycleIdAdminV3NoContent ", 204)
}

func (o *DeleteUserRankingByCycleIDAdminV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRankingByCycleIDAdminV3Unauthorized creates a DeleteUserRankingByCycleIDAdminV3Unauthorized with default headers values
func NewDeleteUserRankingByCycleIDAdminV3Unauthorized() *DeleteUserRankingByCycleIDAdminV3Unauthorized {
	return &DeleteUserRankingByCycleIDAdminV3Unauthorized{}
}

/*DeleteUserRankingByCycleIDAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserRankingByCycleIDAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByCycleIDAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}][%d] deleteUserRankingByCycleIdAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserRankingByCycleIDAdminV3Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *DeleteUserRankingByCycleIDAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByCycleIDAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteUserRankingByCycleIDAdminV3Forbidden creates a DeleteUserRankingByCycleIDAdminV3Forbidden with default headers values
func NewDeleteUserRankingByCycleIDAdminV3Forbidden() *DeleteUserRankingByCycleIDAdminV3Forbidden {
	return &DeleteUserRankingByCycleIDAdminV3Forbidden{}
}

/*DeleteUserRankingByCycleIDAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteUserRankingByCycleIDAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByCycleIDAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}][%d] deleteUserRankingByCycleIdAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserRankingByCycleIDAdminV3Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *DeleteUserRankingByCycleIDAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByCycleIDAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteUserRankingByCycleIDAdminV3NotFound creates a DeleteUserRankingByCycleIDAdminV3NotFound with default headers values
func NewDeleteUserRankingByCycleIDAdminV3NotFound() *DeleteUserRankingByCycleIDAdminV3NotFound {
	return &DeleteUserRankingByCycleIDAdminV3NotFound{}
}

/*DeleteUserRankingByCycleIDAdminV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr><tr><td>71233</td><td>user ranking data not found</td></tr></table>
*/
type DeleteUserRankingByCycleIDAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByCycleIDAdminV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}][%d] deleteUserRankingByCycleIdAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserRankingByCycleIDAdminV3NotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *DeleteUserRankingByCycleIDAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByCycleIDAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteUserRankingByCycleIDAdminV3InternalServerError creates a DeleteUserRankingByCycleIDAdminV3InternalServerError with default headers values
func NewDeleteUserRankingByCycleIDAdminV3InternalServerError() *DeleteUserRankingByCycleIDAdminV3InternalServerError {
	return &DeleteUserRankingByCycleIDAdminV3InternalServerError{}
}

/*DeleteUserRankingByCycleIDAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteUserRankingByCycleIDAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByCycleIDAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}][%d] deleteUserRankingByCycleIdAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserRankingByCycleIDAdminV3InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *DeleteUserRankingByCycleIDAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByCycleIDAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
