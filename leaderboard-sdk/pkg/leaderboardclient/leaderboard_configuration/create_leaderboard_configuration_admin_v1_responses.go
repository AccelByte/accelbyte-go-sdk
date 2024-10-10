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

// CreateLeaderboardConfigurationAdminV1Reader is a Reader for the CreateLeaderboardConfigurationAdminV1 structure.
type CreateLeaderboardConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateLeaderboardConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateLeaderboardConfigurationAdminV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateLeaderboardConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateLeaderboardConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateLeaderboardConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateLeaderboardConfigurationAdminV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateLeaderboardConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateLeaderboardConfigurationAdminV1Created creates a CreateLeaderboardConfigurationAdminV1Created with default headers values
func NewCreateLeaderboardConfigurationAdminV1Created() *CreateLeaderboardConfigurationAdminV1Created {
	return &CreateLeaderboardConfigurationAdminV1Created{}
}

/*CreateLeaderboardConfigurationAdminV1Created handles this case with default header values.

  Leaderboard created
*/
type CreateLeaderboardConfigurationAdminV1Created struct {
	Payload *leaderboardclientmodels.ModelsLeaderboardConfigReq
}

func (o *CreateLeaderboardConfigurationAdminV1Created) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV1Created) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV1Created) GetPayload() *leaderboardclientmodels.ModelsLeaderboardConfigReq {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsLeaderboardConfigReq)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateLeaderboardConfigurationAdminV1BadRequest creates a CreateLeaderboardConfigurationAdminV1BadRequest with default headers values
func NewCreateLeaderboardConfigurationAdminV1BadRequest() *CreateLeaderboardConfigurationAdminV1BadRequest {
	return &CreateLeaderboardConfigurationAdminV1BadRequest{}
}

/*CreateLeaderboardConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>71242</td><td>stat code not found in namespace</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLeaderboardConfigurationAdminV1Unauthorized creates a CreateLeaderboardConfigurationAdminV1Unauthorized with default headers values
func NewCreateLeaderboardConfigurationAdminV1Unauthorized() *CreateLeaderboardConfigurationAdminV1Unauthorized {
	return &CreateLeaderboardConfigurationAdminV1Unauthorized{}
}

/*CreateLeaderboardConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLeaderboardConfigurationAdminV1Forbidden creates a CreateLeaderboardConfigurationAdminV1Forbidden with default headers values
func NewCreateLeaderboardConfigurationAdminV1Forbidden() *CreateLeaderboardConfigurationAdminV1Forbidden {
	return &CreateLeaderboardConfigurationAdminV1Forbidden{}
}

/*CreateLeaderboardConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLeaderboardConfigurationAdminV1Conflict creates a CreateLeaderboardConfigurationAdminV1Conflict with default headers values
func NewCreateLeaderboardConfigurationAdminV1Conflict() *CreateLeaderboardConfigurationAdminV1Conflict {
	return &CreateLeaderboardConfigurationAdminV1Conflict{}
}

/*CreateLeaderboardConfigurationAdminV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71132</td><td>leaderboard configuration already exist</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV1Conflict struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV1Conflict) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV1Conflict) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV1Conflict) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLeaderboardConfigurationAdminV1InternalServerError creates a CreateLeaderboardConfigurationAdminV1InternalServerError with default headers values
func NewCreateLeaderboardConfigurationAdminV1InternalServerError() *CreateLeaderboardConfigurationAdminV1InternalServerError {
	return &CreateLeaderboardConfigurationAdminV1InternalServerError{}
}

/*CreateLeaderboardConfigurationAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
