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

// SetUserLeaderboardVisibilityV3Reader is a Reader for the SetUserLeaderboardVisibilityV3 structure.
type SetUserLeaderboardVisibilityV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetUserLeaderboardVisibilityV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetUserLeaderboardVisibilityV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetUserLeaderboardVisibilityV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSetUserLeaderboardVisibilityV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSetUserLeaderboardVisibilityV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSetUserLeaderboardVisibilityV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetUserLeaderboardVisibilityV3OK creates a SetUserLeaderboardVisibilityV3OK with default headers values
func NewSetUserLeaderboardVisibilityV3OK() *SetUserLeaderboardVisibilityV3OK {
	return &SetUserLeaderboardVisibilityV3OK{}
}

/*SetUserLeaderboardVisibilityV3OK handles this case with default header values.

  User visibility status updated
*/
type SetUserLeaderboardVisibilityV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetUserVisibilityResponse
}

func (o *SetUserLeaderboardVisibilityV3OK) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityV3OK  %+v", 200, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityV3OK) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityV3OK) GetPayload() *leaderboardclientmodels.ModelsGetUserVisibilityResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityV3BadRequest creates a SetUserLeaderboardVisibilityV3BadRequest with default headers values
func NewSetUserLeaderboardVisibilityV3BadRequest() *SetUserLeaderboardVisibilityV3BadRequest {
	return &SetUserLeaderboardVisibilityV3BadRequest{}
}

/*SetUserLeaderboardVisibilityV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type SetUserLeaderboardVisibilityV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityV3BadRequest) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityV3Unauthorized creates a SetUserLeaderboardVisibilityV3Unauthorized with default headers values
func NewSetUserLeaderboardVisibilityV3Unauthorized() *SetUserLeaderboardVisibilityV3Unauthorized {
	return &SetUserLeaderboardVisibilityV3Unauthorized{}
}

/*SetUserLeaderboardVisibilityV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SetUserLeaderboardVisibilityV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityV3Unauthorized) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityV3Forbidden creates a SetUserLeaderboardVisibilityV3Forbidden with default headers values
func NewSetUserLeaderboardVisibilityV3Forbidden() *SetUserLeaderboardVisibilityV3Forbidden {
	return &SetUserLeaderboardVisibilityV3Forbidden{}
}

/*SetUserLeaderboardVisibilityV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type SetUserLeaderboardVisibilityV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityV3Forbidden) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityV3InternalServerError creates a SetUserLeaderboardVisibilityV3InternalServerError with default headers values
func NewSetUserLeaderboardVisibilityV3InternalServerError() *SetUserLeaderboardVisibilityV3InternalServerError {
	return &SetUserLeaderboardVisibilityV3InternalServerError{}
}

/*SetUserLeaderboardVisibilityV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SetUserLeaderboardVisibilityV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityV3InternalServerError) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
