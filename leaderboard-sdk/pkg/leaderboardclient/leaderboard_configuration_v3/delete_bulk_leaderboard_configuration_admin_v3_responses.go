// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration_v3

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

// DeleteBulkLeaderboardConfigurationAdminV3Reader is a Reader for the DeleteBulkLeaderboardConfigurationAdminV3 structure.
type DeleteBulkLeaderboardConfigurationAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteBulkLeaderboardConfigurationAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteBulkLeaderboardConfigurationAdminV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteBulkLeaderboardConfigurationAdminV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteBulkLeaderboardConfigurationAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteBulkLeaderboardConfigurationAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteBulkLeaderboardConfigurationAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteBulkLeaderboardConfigurationAdminV3OK creates a DeleteBulkLeaderboardConfigurationAdminV3OK with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV3OK() *DeleteBulkLeaderboardConfigurationAdminV3OK {
	return &DeleteBulkLeaderboardConfigurationAdminV3OK{}
}

/*DeleteBulkLeaderboardConfigurationAdminV3OK handles this case with default header values.

  Leaderboard deleted
*/
type DeleteBulkLeaderboardConfigurationAdminV3OK struct {
	Payload *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3OK) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV3OK  %+v", 200, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3OK) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV3OK) GetPayload() *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteBulkLeaderboardConfigurationAdminV3BadRequest creates a DeleteBulkLeaderboardConfigurationAdminV3BadRequest with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV3BadRequest() *DeleteBulkLeaderboardConfigurationAdminV3BadRequest {
	return &DeleteBulkLeaderboardConfigurationAdminV3BadRequest{}
}

/*DeleteBulkLeaderboardConfigurationAdminV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3BadRequest) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteBulkLeaderboardConfigurationAdminV3Unauthorized creates a DeleteBulkLeaderboardConfigurationAdminV3Unauthorized with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV3Unauthorized() *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized {
	return &DeleteBulkLeaderboardConfigurationAdminV3Unauthorized{}
}

/*DeleteBulkLeaderboardConfigurationAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteBulkLeaderboardConfigurationAdminV3Forbidden creates a DeleteBulkLeaderboardConfigurationAdminV3Forbidden with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV3Forbidden() *DeleteBulkLeaderboardConfigurationAdminV3Forbidden {
	return &DeleteBulkLeaderboardConfigurationAdminV3Forbidden{}
}

/*DeleteBulkLeaderboardConfigurationAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3Forbidden) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteBulkLeaderboardConfigurationAdminV3InternalServerError creates a DeleteBulkLeaderboardConfigurationAdminV3InternalServerError with default headers values
func NewDeleteBulkLeaderboardConfigurationAdminV3InternalServerError() *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError {
	return &DeleteBulkLeaderboardConfigurationAdminV3InternalServerError{}
}

/*DeleteBulkLeaderboardConfigurationAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteBulkLeaderboardConfigurationAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete][%d] deleteBulkLeaderboardConfigurationAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError) ToJSONString() string {
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

func (o *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
