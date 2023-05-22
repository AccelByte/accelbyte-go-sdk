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

// GetHiddenUsersV3Reader is a Reader for the GetHiddenUsersV3 structure.
type GetHiddenUsersV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetHiddenUsersV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetHiddenUsersV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetHiddenUsersV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetHiddenUsersV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetHiddenUsersV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetHiddenUsersV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetHiddenUsersV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetHiddenUsersV3OK creates a GetHiddenUsersV3OK with default headers values
func NewGetHiddenUsersV3OK() *GetHiddenUsersV3OK {
	return &GetHiddenUsersV3OK{}
}

/*GetHiddenUsersV3OK handles this case with default header values.

  OK
*/
type GetHiddenUsersV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetHiddenUserResponse
}

func (o *GetHiddenUsersV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetHiddenUsersV3OK) ToJSONString() string {
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

func (o *GetHiddenUsersV3OK) GetPayload() *leaderboardclientmodels.ModelsGetHiddenUserResponse {
	return o.Payload
}

func (o *GetHiddenUsersV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetHiddenUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetHiddenUsersV3BadRequest creates a GetHiddenUsersV3BadRequest with default headers values
func NewGetHiddenUsersV3BadRequest() *GetHiddenUsersV3BadRequest {
	return &GetHiddenUsersV3BadRequest{}
}

/*GetHiddenUsersV3BadRequest handles this case with default header values.

  Bad Request
*/
type GetHiddenUsersV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetHiddenUsersV3BadRequest) ToJSONString() string {
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

func (o *GetHiddenUsersV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetHiddenUsersV3Unauthorized creates a GetHiddenUsersV3Unauthorized with default headers values
func NewGetHiddenUsersV3Unauthorized() *GetHiddenUsersV3Unauthorized {
	return &GetHiddenUsersV3Unauthorized{}
}

/*GetHiddenUsersV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetHiddenUsersV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetHiddenUsersV3Unauthorized) ToJSONString() string {
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

func (o *GetHiddenUsersV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetHiddenUsersV3Forbidden creates a GetHiddenUsersV3Forbidden with default headers values
func NewGetHiddenUsersV3Forbidden() *GetHiddenUsersV3Forbidden {
	return &GetHiddenUsersV3Forbidden{}
}

/*GetHiddenUsersV3Forbidden handles this case with default header values.

  Forbidden
*/
type GetHiddenUsersV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetHiddenUsersV3Forbidden) ToJSONString() string {
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

func (o *GetHiddenUsersV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetHiddenUsersV3NotFound creates a GetHiddenUsersV3NotFound with default headers values
func NewGetHiddenUsersV3NotFound() *GetHiddenUsersV3NotFound {
	return &GetHiddenUsersV3NotFound{}
}

/*GetHiddenUsersV3NotFound handles this case with default header values.

  Not Found
*/
type GetHiddenUsersV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV3NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetHiddenUsersV3NotFound) ToJSONString() string {
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

func (o *GetHiddenUsersV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetHiddenUsersV3InternalServerError creates a GetHiddenUsersV3InternalServerError with default headers values
func NewGetHiddenUsersV3InternalServerError() *GetHiddenUsersV3InternalServerError {
	return &GetHiddenUsersV3InternalServerError{}
}

/*GetHiddenUsersV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetHiddenUsersV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetHiddenUsersV3InternalServerError) ToJSONString() string {
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

func (o *GetHiddenUsersV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
