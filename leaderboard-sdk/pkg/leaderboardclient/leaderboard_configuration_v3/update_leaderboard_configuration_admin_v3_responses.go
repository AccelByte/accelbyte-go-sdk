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

// UpdateLeaderboardConfigurationAdminV3Reader is a Reader for the UpdateLeaderboardConfigurationAdminV3 structure.
type UpdateLeaderboardConfigurationAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateLeaderboardConfigurationAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateLeaderboardConfigurationAdminV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateLeaderboardConfigurationAdminV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateLeaderboardConfigurationAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateLeaderboardConfigurationAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateLeaderboardConfigurationAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateLeaderboardConfigurationAdminV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateLeaderboardConfigurationAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateLeaderboardConfigurationAdminV3OK creates a UpdateLeaderboardConfigurationAdminV3OK with default headers values
func NewUpdateLeaderboardConfigurationAdminV3OK() *UpdateLeaderboardConfigurationAdminV3OK {
	return &UpdateLeaderboardConfigurationAdminV3OK{}
}

/*UpdateLeaderboardConfigurationAdminV3OK handles this case with default header values.

  Leaderboard updated
*/
type UpdateLeaderboardConfigurationAdminV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3
}

func (o *UpdateLeaderboardConfigurationAdminV3OK) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV3OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV3OK) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV3OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3 {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLeaderboardConfigurationAdminV3BadRequest creates a UpdateLeaderboardConfigurationAdminV3BadRequest with default headers values
func NewUpdateLeaderboardConfigurationAdminV3BadRequest() *UpdateLeaderboardConfigurationAdminV3BadRequest {
	return &UpdateLeaderboardConfigurationAdminV3BadRequest{}
}

/*UpdateLeaderboardConfigurationAdminV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>71243</td><td>cycle doesn't belong to the stat code</td></tr><tr><td>71244</td><td>cycle is already stopped</td></tr></table>
*/
type UpdateLeaderboardConfigurationAdminV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV3BadRequest) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateLeaderboardConfigurationAdminV3Unauthorized creates a UpdateLeaderboardConfigurationAdminV3Unauthorized with default headers values
func NewUpdateLeaderboardConfigurationAdminV3Unauthorized() *UpdateLeaderboardConfigurationAdminV3Unauthorized {
	return &UpdateLeaderboardConfigurationAdminV3Unauthorized{}
}

/*UpdateLeaderboardConfigurationAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateLeaderboardConfigurationAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV3Unauthorized) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateLeaderboardConfigurationAdminV3Forbidden creates a UpdateLeaderboardConfigurationAdminV3Forbidden with default headers values
func NewUpdateLeaderboardConfigurationAdminV3Forbidden() *UpdateLeaderboardConfigurationAdminV3Forbidden {
	return &UpdateLeaderboardConfigurationAdminV3Forbidden{}
}

/*UpdateLeaderboardConfigurationAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateLeaderboardConfigurationAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV3Forbidden) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateLeaderboardConfigurationAdminV3NotFound creates a UpdateLeaderboardConfigurationAdminV3NotFound with default headers values
func NewUpdateLeaderboardConfigurationAdminV3NotFound() *UpdateLeaderboardConfigurationAdminV3NotFound {
	return &UpdateLeaderboardConfigurationAdminV3NotFound{}
}

/*UpdateLeaderboardConfigurationAdminV3NotFound handles this case with default header values.


 */
type UpdateLeaderboardConfigurationAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV3NotFound) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateLeaderboardConfigurationAdminV3Conflict creates a UpdateLeaderboardConfigurationAdminV3Conflict with default headers values
func NewUpdateLeaderboardConfigurationAdminV3Conflict() *UpdateLeaderboardConfigurationAdminV3Conflict {
	return &UpdateLeaderboardConfigurationAdminV3Conflict{}
}

/*UpdateLeaderboardConfigurationAdminV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71132</td><td>leaderboard configuration already exist</td></tr></table>
*/
type UpdateLeaderboardConfigurationAdminV3Conflict struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV3Conflict) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV3Conflict) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV3Conflict) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateLeaderboardConfigurationAdminV3InternalServerError creates a UpdateLeaderboardConfigurationAdminV3InternalServerError with default headers values
func NewUpdateLeaderboardConfigurationAdminV3InternalServerError() *UpdateLeaderboardConfigurationAdminV3InternalServerError {
	return &UpdateLeaderboardConfigurationAdminV3InternalServerError{}
}

/*UpdateLeaderboardConfigurationAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdateLeaderboardConfigurationAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV3InternalServerError) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
