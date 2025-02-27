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

// DeleteBulkLeaderboardConfigurationAdminV1Reader is a Reader for the DeleteBulkLeaderboardConfigurationAdminV1 structure.
type DeleteBulkLeaderboardConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteBulkLeaderboardConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteBulkLeaderboardConfigurationAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteBulkLeaderboardConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteBulkLeaderboardConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteBulkLeaderboardConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteBulkLeaderboardConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteBulkLeaderboardConfigurationAdminV1OK creates a DeleteBulkLeaderboardConfigurationAdminV1OK with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV1OK() *DeleteBulkLeaderboardConfigurationAdminV1OK {
	return &DeleteBulkLeaderboardConfigurationAdminV1OK{}
}

/*DeleteBulkLeaderboardConfigurationAdminV1OK handles this case with default header values.

  Leaderboards deleted
*/
type DeleteBulkLeaderboardConfigurationAdminV1OK struct {
	Payload *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1OK) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1OK) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV1OK) GetPayload() *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteBulkLeaderboardConfigurationAdminV1BadRequest creates a DeleteBulkLeaderboardConfigurationAdminV1BadRequest with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV1BadRequest() *DeleteBulkLeaderboardConfigurationAdminV1BadRequest {
	return &DeleteBulkLeaderboardConfigurationAdminV1BadRequest{}
}

/*DeleteBulkLeaderboardConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteBulkLeaderboardConfigurationAdminV1Unauthorized creates a DeleteBulkLeaderboardConfigurationAdminV1Unauthorized with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV1Unauthorized() *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized {
	return &DeleteBulkLeaderboardConfigurationAdminV1Unauthorized{}
}

/*DeleteBulkLeaderboardConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteBulkLeaderboardConfigurationAdminV1Forbidden creates a DeleteBulkLeaderboardConfigurationAdminV1Forbidden with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV1Forbidden() *DeleteBulkLeaderboardConfigurationAdminV1Forbidden {
	return &DeleteBulkLeaderboardConfigurationAdminV1Forbidden{}
}

/*DeleteBulkLeaderboardConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteBulkLeaderboardConfigurationAdminV1InternalServerError creates a DeleteBulkLeaderboardConfigurationAdminV1InternalServerError with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV1InternalServerError() *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError {
	return &DeleteBulkLeaderboardConfigurationAdminV1InternalServerError{}
}

/*DeleteBulkLeaderboardConfigurationAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
