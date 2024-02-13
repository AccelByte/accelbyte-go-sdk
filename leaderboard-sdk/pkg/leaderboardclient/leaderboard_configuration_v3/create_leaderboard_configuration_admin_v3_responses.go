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

// CreateLeaderboardConfigurationAdminV3Reader is a Reader for the CreateLeaderboardConfigurationAdminV3 structure.
type CreateLeaderboardConfigurationAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateLeaderboardConfigurationAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateLeaderboardConfigurationAdminV3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateLeaderboardConfigurationAdminV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateLeaderboardConfigurationAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateLeaderboardConfigurationAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateLeaderboardConfigurationAdminV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateLeaderboardConfigurationAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateLeaderboardConfigurationAdminV3Created creates a CreateLeaderboardConfigurationAdminV3Created with default headers values
func NewCreateLeaderboardConfigurationAdminV3Created() *CreateLeaderboardConfigurationAdminV3Created {
	return &CreateLeaderboardConfigurationAdminV3Created{}
}

/*CreateLeaderboardConfigurationAdminV3Created handles this case with default header values.

  Leaderboard created
*/
type CreateLeaderboardConfigurationAdminV3Created struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3
}

func (o *CreateLeaderboardConfigurationAdminV3Created) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV3Created  %+v", 201, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV3Created) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV3Created) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardConfigRespV3 {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationAdminV3BadRequest creates a CreateLeaderboardConfigurationAdminV3BadRequest with default headers values
func NewCreateLeaderboardConfigurationAdminV3BadRequest() *CreateLeaderboardConfigurationAdminV3BadRequest {
	return &CreateLeaderboardConfigurationAdminV3BadRequest{}
}

/*CreateLeaderboardConfigurationAdminV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>71242</td><td>stat code not found in namespace</td></tr><tr><td>71243</td><td>cycle doesn't belong to the stat code</td></tr><tr><td>71244</td><td>cycle is already stopped</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV3BadRequest) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationAdminV3Unauthorized creates a CreateLeaderboardConfigurationAdminV3Unauthorized with default headers values
func NewCreateLeaderboardConfigurationAdminV3Unauthorized() *CreateLeaderboardConfigurationAdminV3Unauthorized {
	return &CreateLeaderboardConfigurationAdminV3Unauthorized{}
}

/*CreateLeaderboardConfigurationAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV3Unauthorized) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationAdminV3Forbidden creates a CreateLeaderboardConfigurationAdminV3Forbidden with default headers values
func NewCreateLeaderboardConfigurationAdminV3Forbidden() *CreateLeaderboardConfigurationAdminV3Forbidden {
	return &CreateLeaderboardConfigurationAdminV3Forbidden{}
}

/*CreateLeaderboardConfigurationAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV3Forbidden) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationAdminV3Conflict creates a CreateLeaderboardConfigurationAdminV3Conflict with default headers values
func NewCreateLeaderboardConfigurationAdminV3Conflict() *CreateLeaderboardConfigurationAdminV3Conflict {
	return &CreateLeaderboardConfigurationAdminV3Conflict{}
}

/*CreateLeaderboardConfigurationAdminV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71132</td><td>leaderboard configuration already exist</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV3Conflict struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV3Conflict) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV3Conflict) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV3Conflict) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationAdminV3InternalServerError creates a CreateLeaderboardConfigurationAdminV3InternalServerError with default headers values
func NewCreateLeaderboardConfigurationAdminV3InternalServerError() *CreateLeaderboardConfigurationAdminV3InternalServerError {
	return &CreateLeaderboardConfigurationAdminV3InternalServerError{}
}

/*CreateLeaderboardConfigurationAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type CreateLeaderboardConfigurationAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationAdminV3InternalServerError) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
