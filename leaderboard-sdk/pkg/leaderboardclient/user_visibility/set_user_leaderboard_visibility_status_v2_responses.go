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

// SetUserLeaderboardVisibilityStatusV2Reader is a Reader for the SetUserLeaderboardVisibilityStatusV2 structure.
type SetUserLeaderboardVisibilityStatusV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetUserLeaderboardVisibilityStatusV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetUserLeaderboardVisibilityStatusV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetUserLeaderboardVisibilityStatusV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSetUserLeaderboardVisibilityStatusV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSetUserLeaderboardVisibilityStatusV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSetUserLeaderboardVisibilityStatusV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSetUserLeaderboardVisibilityStatusV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetUserLeaderboardVisibilityStatusV2OK creates a SetUserLeaderboardVisibilityStatusV2OK with default headers values
func NewSetUserLeaderboardVisibilityStatusV2OK() *SetUserLeaderboardVisibilityStatusV2OK {
	return &SetUserLeaderboardVisibilityStatusV2OK{}
}

/*SetUserLeaderboardVisibilityStatusV2OK handles this case with default header values.

  OK
*/
type SetUserLeaderboardVisibilityStatusV2OK struct {
	Payload *leaderboardclientmodels.ModelsGetUserVisibilityResponse
}

func (o *SetUserLeaderboardVisibilityStatusV2OK) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityStatusV2OK  %+v", 200, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityStatusV2OK) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityStatusV2OK) GetPayload() *leaderboardclientmodels.ModelsGetUserVisibilityResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityStatusV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityStatusV2BadRequest creates a SetUserLeaderboardVisibilityStatusV2BadRequest with default headers values
func NewSetUserLeaderboardVisibilityStatusV2BadRequest() *SetUserLeaderboardVisibilityStatusV2BadRequest {
	return &SetUserLeaderboardVisibilityStatusV2BadRequest{}
}

/*SetUserLeaderboardVisibilityStatusV2BadRequest handles this case with default header values.

  Bad Request
*/
type SetUserLeaderboardVisibilityStatusV2BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityStatusV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityStatusV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityStatusV2BadRequest) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityStatusV2BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityStatusV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityStatusV2Unauthorized creates a SetUserLeaderboardVisibilityStatusV2Unauthorized with default headers values
func NewSetUserLeaderboardVisibilityStatusV2Unauthorized() *SetUserLeaderboardVisibilityStatusV2Unauthorized {
	return &SetUserLeaderboardVisibilityStatusV2Unauthorized{}
}

/*SetUserLeaderboardVisibilityStatusV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type SetUserLeaderboardVisibilityStatusV2Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityStatusV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityStatusV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityStatusV2Unauthorized) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityStatusV2Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityStatusV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityStatusV2Forbidden creates a SetUserLeaderboardVisibilityStatusV2Forbidden with default headers values
func NewSetUserLeaderboardVisibilityStatusV2Forbidden() *SetUserLeaderboardVisibilityStatusV2Forbidden {
	return &SetUserLeaderboardVisibilityStatusV2Forbidden{}
}

/*SetUserLeaderboardVisibilityStatusV2Forbidden handles this case with default header values.

  Forbidden
*/
type SetUserLeaderboardVisibilityStatusV2Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityStatusV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityStatusV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityStatusV2Forbidden) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityStatusV2Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityStatusV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityStatusV2NotFound creates a SetUserLeaderboardVisibilityStatusV2NotFound with default headers values
func NewSetUserLeaderboardVisibilityStatusV2NotFound() *SetUserLeaderboardVisibilityStatusV2NotFound {
	return &SetUserLeaderboardVisibilityStatusV2NotFound{}
}

/*SetUserLeaderboardVisibilityStatusV2NotFound handles this case with default header values.

  Not Found
*/
type SetUserLeaderboardVisibilityStatusV2NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityStatusV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityStatusV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityStatusV2NotFound) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityStatusV2NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityStatusV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetUserLeaderboardVisibilityStatusV2InternalServerError creates a SetUserLeaderboardVisibilityStatusV2InternalServerError with default headers values
func NewSetUserLeaderboardVisibilityStatusV2InternalServerError() *SetUserLeaderboardVisibilityStatusV2InternalServerError {
	return &SetUserLeaderboardVisibilityStatusV2InternalServerError{}
}

/*SetUserLeaderboardVisibilityStatusV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type SetUserLeaderboardVisibilityStatusV2InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *SetUserLeaderboardVisibilityStatusV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility][%d] setUserLeaderboardVisibilityStatusV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SetUserLeaderboardVisibilityStatusV2InternalServerError) ToJSONString() string {
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

func (o *SetUserLeaderboardVisibilityStatusV2InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SetUserLeaderboardVisibilityStatusV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
