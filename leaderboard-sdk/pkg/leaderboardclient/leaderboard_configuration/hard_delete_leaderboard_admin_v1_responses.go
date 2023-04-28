// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration

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

// HardDeleteLeaderboardAdminV1Reader is a Reader for the HardDeleteLeaderboardAdminV1 structure.
type HardDeleteLeaderboardAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *HardDeleteLeaderboardAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewHardDeleteLeaderboardAdminV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewHardDeleteLeaderboardAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewHardDeleteLeaderboardAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewHardDeleteLeaderboardAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewHardDeleteLeaderboardAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewHardDeleteLeaderboardAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard returns an error %d: %s", response.Code(), string(data))
	}
}

// NewHardDeleteLeaderboardAdminV1NoContent creates a HardDeleteLeaderboardAdminV1NoContent with default headers values
func NewHardDeleteLeaderboardAdminV1NoContent() *HardDeleteLeaderboardAdminV1NoContent {
	return &HardDeleteLeaderboardAdminV1NoContent{}
}

/*HardDeleteLeaderboardAdminV1NoContent handles this case with default header values.

  No Content
*/
type HardDeleteLeaderboardAdminV1NoContent struct {
}

func (o *HardDeleteLeaderboardAdminV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV1NoContent ", 204)
}

func (o *HardDeleteLeaderboardAdminV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewHardDeleteLeaderboardAdminV1BadRequest creates a HardDeleteLeaderboardAdminV1BadRequest with default headers values
func NewHardDeleteLeaderboardAdminV1BadRequest() *HardDeleteLeaderboardAdminV1BadRequest {
	return &HardDeleteLeaderboardAdminV1BadRequest{}
}

/*HardDeleteLeaderboardAdminV1BadRequest handles this case with default header values.

  Bad Request
*/
type HardDeleteLeaderboardAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV1BadRequest) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV1Unauthorized creates a HardDeleteLeaderboardAdminV1Unauthorized with default headers values
func NewHardDeleteLeaderboardAdminV1Unauthorized() *HardDeleteLeaderboardAdminV1Unauthorized {
	return &HardDeleteLeaderboardAdminV1Unauthorized{}
}

/*HardDeleteLeaderboardAdminV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type HardDeleteLeaderboardAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV1Unauthorized) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV1Forbidden creates a HardDeleteLeaderboardAdminV1Forbidden with default headers values
func NewHardDeleteLeaderboardAdminV1Forbidden() *HardDeleteLeaderboardAdminV1Forbidden {
	return &HardDeleteLeaderboardAdminV1Forbidden{}
}

/*HardDeleteLeaderboardAdminV1Forbidden handles this case with default header values.

  Forbidden
*/
type HardDeleteLeaderboardAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV1Forbidden) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV1NotFound creates a HardDeleteLeaderboardAdminV1NotFound with default headers values
func NewHardDeleteLeaderboardAdminV1NotFound() *HardDeleteLeaderboardAdminV1NotFound {
	return &HardDeleteLeaderboardAdminV1NotFound{}
}

/*HardDeleteLeaderboardAdminV1NotFound handles this case with default header values.

  Not Found
*/
type HardDeleteLeaderboardAdminV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV1NotFound) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV1InternalServerError creates a HardDeleteLeaderboardAdminV1InternalServerError with default headers values
func NewHardDeleteLeaderboardAdminV1InternalServerError() *HardDeleteLeaderboardAdminV1InternalServerError {
	return &HardDeleteLeaderboardAdminV1InternalServerError{}
}

/*HardDeleteLeaderboardAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type HardDeleteLeaderboardAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV1InternalServerError) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
