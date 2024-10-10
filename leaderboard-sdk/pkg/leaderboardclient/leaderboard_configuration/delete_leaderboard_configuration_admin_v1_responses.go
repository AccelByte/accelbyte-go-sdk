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

// DeleteLeaderboardConfigurationAdminV1Reader is a Reader for the DeleteLeaderboardConfigurationAdminV1 structure.
type DeleteLeaderboardConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteLeaderboardConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteLeaderboardConfigurationAdminV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteLeaderboardConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteLeaderboardConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteLeaderboardConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteLeaderboardConfigurationAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteLeaderboardConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteLeaderboardConfigurationAdminV1NoContent creates a DeleteLeaderboardConfigurationAdminV1NoContent with default headers values
func NewDeleteLeaderboardConfigurationAdminV1NoContent() *DeleteLeaderboardConfigurationAdminV1NoContent {
	return &DeleteLeaderboardConfigurationAdminV1NoContent{}
}

/*DeleteLeaderboardConfigurationAdminV1NoContent handles this case with default header values.

  Leaderboard deleted
*/
type DeleteLeaderboardConfigurationAdminV1NoContent struct {
}

func (o *DeleteLeaderboardConfigurationAdminV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] deleteLeaderboardConfigurationAdminV1NoContent ", 204)
}

func (o *DeleteLeaderboardConfigurationAdminV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteLeaderboardConfigurationAdminV1BadRequest creates a DeleteLeaderboardConfigurationAdminV1BadRequest with default headers values
func NewDeleteLeaderboardConfigurationAdminV1BadRequest() *DeleteLeaderboardConfigurationAdminV1BadRequest {
	return &DeleteLeaderboardConfigurationAdminV1BadRequest{}
}

/*DeleteLeaderboardConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteLeaderboardConfigurationAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteLeaderboardConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] deleteLeaderboardConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteLeaderboardConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *DeleteLeaderboardConfigurationAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteLeaderboardConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteLeaderboardConfigurationAdminV1Unauthorized creates a DeleteLeaderboardConfigurationAdminV1Unauthorized with default headers values
func NewDeleteLeaderboardConfigurationAdminV1Unauthorized() *DeleteLeaderboardConfigurationAdminV1Unauthorized {
	return &DeleteLeaderboardConfigurationAdminV1Unauthorized{}
}

/*DeleteLeaderboardConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteLeaderboardConfigurationAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteLeaderboardConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] deleteLeaderboardConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteLeaderboardConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *DeleteLeaderboardConfigurationAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteLeaderboardConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteLeaderboardConfigurationAdminV1Forbidden creates a DeleteLeaderboardConfigurationAdminV1Forbidden with default headers values
func NewDeleteLeaderboardConfigurationAdminV1Forbidden() *DeleteLeaderboardConfigurationAdminV1Forbidden {
	return &DeleteLeaderboardConfigurationAdminV1Forbidden{}
}

/*DeleteLeaderboardConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteLeaderboardConfigurationAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteLeaderboardConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] deleteLeaderboardConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteLeaderboardConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *DeleteLeaderboardConfigurationAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteLeaderboardConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteLeaderboardConfigurationAdminV1NotFound creates a DeleteLeaderboardConfigurationAdminV1NotFound with default headers values
func NewDeleteLeaderboardConfigurationAdminV1NotFound() *DeleteLeaderboardConfigurationAdminV1NotFound {
	return &DeleteLeaderboardConfigurationAdminV1NotFound{}
}

/*DeleteLeaderboardConfigurationAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr></table>
*/
type DeleteLeaderboardConfigurationAdminV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteLeaderboardConfigurationAdminV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] deleteLeaderboardConfigurationAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteLeaderboardConfigurationAdminV1NotFound) ToJSONString() string {
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

func (o *DeleteLeaderboardConfigurationAdminV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteLeaderboardConfigurationAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteLeaderboardConfigurationAdminV1InternalServerError creates a DeleteLeaderboardConfigurationAdminV1InternalServerError with default headers values
func NewDeleteLeaderboardConfigurationAdminV1InternalServerError() *DeleteLeaderboardConfigurationAdminV1InternalServerError {
	return &DeleteLeaderboardConfigurationAdminV1InternalServerError{}
}

/*DeleteLeaderboardConfigurationAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteLeaderboardConfigurationAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteLeaderboardConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] deleteLeaderboardConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteLeaderboardConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *DeleteLeaderboardConfigurationAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteLeaderboardConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
