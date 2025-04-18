// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_visibility

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

// SetUserVisibilityStatusV2Reader is a Reader for the SetUserVisibilityStatusV2 structure.
type SetUserVisibilityStatusV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetUserVisibilityStatusV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetUserVisibilityStatusV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetUserVisibilityStatusV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSetUserVisibilityStatusV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSetUserVisibilityStatusV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSetUserVisibilityStatusV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetUserVisibilityStatusV2OK creates a SetUserVisibilityStatusV2OK with default headers values
func NewSetUserVisibilityStatusV2OK() *SetUserVisibilityStatusV2OK {
	return &SetUserVisibilityStatusV2OK{}
}

/*SetUserVisibilityStatusV2OK handles this case with default header values.

  User visibility status updated
*/
type SetUserVisibilityStatusV2OK struct {
	Payload *leaderboardclientmodels.ModelsGetUserVisibilityResponse
}

func (o *SetUserVisibilityStatusV2OK) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityStatusV2OK  %+v", 200, o.ToJSONString())
}

func (o *SetUserVisibilityStatusV2OK) ToJSONString() string {
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

func (o *SetUserVisibilityStatusV2OK) GetPayload() *leaderboardclientmodels.ModelsGetUserVisibilityResponse {
	return o.Payload
}

func (o *SetUserVisibilityStatusV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetUserVisibilityResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSetUserVisibilityStatusV2BadRequest creates a SetUserVisibilityStatusV2BadRequest with default headers values
func NewSetUserVisibilityStatusV2BadRequest() *SetUserVisibilityStatusV2BadRequest {
	return &SetUserVisibilityStatusV2BadRequest{}
}

/*SetUserVisibilityStatusV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type SetUserVisibilityStatusV2BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityStatusV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityStatusV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetUserVisibilityStatusV2BadRequest) ToJSONString() string {
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

func (o *SetUserVisibilityStatusV2BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityStatusV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSetUserVisibilityStatusV2Unauthorized creates a SetUserVisibilityStatusV2Unauthorized with default headers values
func NewSetUserVisibilityStatusV2Unauthorized() *SetUserVisibilityStatusV2Unauthorized {
	return &SetUserVisibilityStatusV2Unauthorized{}
}

/*SetUserVisibilityStatusV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SetUserVisibilityStatusV2Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityStatusV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityStatusV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SetUserVisibilityStatusV2Unauthorized) ToJSONString() string {
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

func (o *SetUserVisibilityStatusV2Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityStatusV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSetUserVisibilityStatusV2Forbidden creates a SetUserVisibilityStatusV2Forbidden with default headers values
func NewSetUserVisibilityStatusV2Forbidden() *SetUserVisibilityStatusV2Forbidden {
	return &SetUserVisibilityStatusV2Forbidden{}
}

/*SetUserVisibilityStatusV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type SetUserVisibilityStatusV2Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityStatusV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityStatusV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SetUserVisibilityStatusV2Forbidden) ToJSONString() string {
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

func (o *SetUserVisibilityStatusV2Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityStatusV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSetUserVisibilityStatusV2InternalServerError creates a SetUserVisibilityStatusV2InternalServerError with default headers values
func NewSetUserVisibilityStatusV2InternalServerError() *SetUserVisibilityStatusV2InternalServerError {
	return &SetUserVisibilityStatusV2InternalServerError{}
}

/*SetUserVisibilityStatusV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SetUserVisibilityStatusV2InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityStatusV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityStatusV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SetUserVisibilityStatusV2InternalServerError) ToJSONString() string {
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

func (o *SetUserVisibilityStatusV2InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityStatusV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
