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

// SetUserVisibilityV3Reader is a Reader for the SetUserVisibilityV3 structure.
type SetUserVisibilityV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetUserVisibilityV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetUserVisibilityV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetUserVisibilityV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSetUserVisibilityV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSetUserVisibilityV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSetUserVisibilityV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetUserVisibilityV3OK creates a SetUserVisibilityV3OK with default headers values
func NewSetUserVisibilityV3OK() *SetUserVisibilityV3OK {
	return &SetUserVisibilityV3OK{}
}

/*SetUserVisibilityV3OK handles this case with default header values.

  User visibility status updated
*/
type SetUserVisibilityV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetUserVisibilityResponse
}

func (o *SetUserVisibilityV3OK) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityV3OK  %+v", 200, o.ToJSONString())
}

func (o *SetUserVisibilityV3OK) ToJSONString() string {
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

func (o *SetUserVisibilityV3OK) GetPayload() *leaderboardclientmodels.ModelsGetUserVisibilityResponse {
	return o.Payload
}

func (o *SetUserVisibilityV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserVisibilityV3BadRequest creates a SetUserVisibilityV3BadRequest with default headers values
func NewSetUserVisibilityV3BadRequest() *SetUserVisibilityV3BadRequest {
	return &SetUserVisibilityV3BadRequest{}
}

/*SetUserVisibilityV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type SetUserVisibilityV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetUserVisibilityV3BadRequest) ToJSONString() string {
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

func (o *SetUserVisibilityV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserVisibilityV3Unauthorized creates a SetUserVisibilityV3Unauthorized with default headers values
func NewSetUserVisibilityV3Unauthorized() *SetUserVisibilityV3Unauthorized {
	return &SetUserVisibilityV3Unauthorized{}
}

/*SetUserVisibilityV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SetUserVisibilityV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SetUserVisibilityV3Unauthorized) ToJSONString() string {
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

func (o *SetUserVisibilityV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserVisibilityV3Forbidden creates a SetUserVisibilityV3Forbidden with default headers values
func NewSetUserVisibilityV3Forbidden() *SetUserVisibilityV3Forbidden {
	return &SetUserVisibilityV3Forbidden{}
}

/*SetUserVisibilityV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type SetUserVisibilityV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SetUserVisibilityV3Forbidden) ToJSONString() string {
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

func (o *SetUserVisibilityV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserVisibilityV3InternalServerError creates a SetUserVisibilityV3InternalServerError with default headers values
func NewSetUserVisibilityV3InternalServerError() *SetUserVisibilityV3InternalServerError {
	return &SetUserVisibilityV3InternalServerError{}
}

/*SetUserVisibilityV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SetUserVisibilityV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserVisibilityV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility][%d] setUserVisibilityV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SetUserVisibilityV3InternalServerError) ToJSONString() string {
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

func (o *SetUserVisibilityV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserVisibilityV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
