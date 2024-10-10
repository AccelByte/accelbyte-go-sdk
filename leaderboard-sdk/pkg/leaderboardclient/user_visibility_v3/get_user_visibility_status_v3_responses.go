// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_visibility_v3

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

// GetUserVisibilityStatusV3Reader is a Reader for the GetUserVisibilityStatusV3 structure.
type GetUserVisibilityStatusV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserVisibilityStatusV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserVisibilityStatusV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserVisibilityStatusV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserVisibilityStatusV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserVisibilityStatusV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserVisibilityStatusV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserVisibilityStatusV3OK creates a GetUserVisibilityStatusV3OK with default headers values
func NewGetUserVisibilityStatusV3OK() *GetUserVisibilityStatusV3OK {
	return &GetUserVisibilityStatusV3OK{}
}

/*GetUserVisibilityStatusV3OK handles this case with default header values.

  User visibility status retrieved
*/
type GetUserVisibilityStatusV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetUserVisibilityResponse
}

func (o *GetUserVisibilityStatusV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] getUserVisibilityStatusV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserVisibilityStatusV3OK) ToJSONString() string {
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

func (o *GetUserVisibilityStatusV3OK) GetPayload() *leaderboardclientmodels.ModelsGetUserVisibilityResponse {
	return o.Payload
}

func (o *GetUserVisibilityStatusV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserVisibilityStatusV3BadRequest creates a GetUserVisibilityStatusV3BadRequest with default headers values
func NewGetUserVisibilityStatusV3BadRequest() *GetUserVisibilityStatusV3BadRequest {
	return &GetUserVisibilityStatusV3BadRequest{}
}

/*GetUserVisibilityStatusV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserVisibilityStatusV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserVisibilityStatusV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] getUserVisibilityStatusV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserVisibilityStatusV3BadRequest) ToJSONString() string {
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

func (o *GetUserVisibilityStatusV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserVisibilityStatusV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserVisibilityStatusV3Unauthorized creates a GetUserVisibilityStatusV3Unauthorized with default headers values
func NewGetUserVisibilityStatusV3Unauthorized() *GetUserVisibilityStatusV3Unauthorized {
	return &GetUserVisibilityStatusV3Unauthorized{}
}

/*GetUserVisibilityStatusV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserVisibilityStatusV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserVisibilityStatusV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] getUserVisibilityStatusV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserVisibilityStatusV3Unauthorized) ToJSONString() string {
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

func (o *GetUserVisibilityStatusV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserVisibilityStatusV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserVisibilityStatusV3Forbidden creates a GetUserVisibilityStatusV3Forbidden with default headers values
func NewGetUserVisibilityStatusV3Forbidden() *GetUserVisibilityStatusV3Forbidden {
	return &GetUserVisibilityStatusV3Forbidden{}
}

/*GetUserVisibilityStatusV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserVisibilityStatusV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserVisibilityStatusV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] getUserVisibilityStatusV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserVisibilityStatusV3Forbidden) ToJSONString() string {
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

func (o *GetUserVisibilityStatusV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserVisibilityStatusV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserVisibilityStatusV3InternalServerError creates a GetUserVisibilityStatusV3InternalServerError with default headers values
func NewGetUserVisibilityStatusV3InternalServerError() *GetUserVisibilityStatusV3InternalServerError {
	return &GetUserVisibilityStatusV3InternalServerError{}
}

/*GetUserVisibilityStatusV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetUserVisibilityStatusV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserVisibilityStatusV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] getUserVisibilityStatusV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserVisibilityStatusV3InternalServerError) ToJSONString() string {
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

func (o *GetUserVisibilityStatusV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserVisibilityStatusV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
