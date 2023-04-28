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

// CreateLeaderboardConfigurationPublicV1Reader is a Reader for the CreateLeaderboardConfigurationPublicV1 structure.
type CreateLeaderboardConfigurationPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateLeaderboardConfigurationPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateLeaderboardConfigurationPublicV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateLeaderboardConfigurationPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateLeaderboardConfigurationPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateLeaderboardConfigurationPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateLeaderboardConfigurationPublicV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateLeaderboardConfigurationPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /leaderboard/v1/public/namespaces/{namespace}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateLeaderboardConfigurationPublicV1Created creates a CreateLeaderboardConfigurationPublicV1Created with default headers values
func NewCreateLeaderboardConfigurationPublicV1Created() *CreateLeaderboardConfigurationPublicV1Created {
	return &CreateLeaderboardConfigurationPublicV1Created{}
}

/*CreateLeaderboardConfigurationPublicV1Created handles this case with default header values.

  Created
*/
type CreateLeaderboardConfigurationPublicV1Created struct {
	Payload *leaderboardclientmodels.ModelsLeaderboardConfigReq
}

func (o *CreateLeaderboardConfigurationPublicV1Created) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationPublicV1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationPublicV1Created) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationPublicV1Created) GetPayload() *leaderboardclientmodels.ModelsLeaderboardConfigReq {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationPublicV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationPublicV1BadRequest creates a CreateLeaderboardConfigurationPublicV1BadRequest with default headers values
func NewCreateLeaderboardConfigurationPublicV1BadRequest() *CreateLeaderboardConfigurationPublicV1BadRequest {
	return &CreateLeaderboardConfigurationPublicV1BadRequest{}
}

/*CreateLeaderboardConfigurationPublicV1BadRequest handles this case with default header values.

  Bad Request
*/
type CreateLeaderboardConfigurationPublicV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationPublicV1BadRequest) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationPublicV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationPublicV1Unauthorized creates a CreateLeaderboardConfigurationPublicV1Unauthorized with default headers values
func NewCreateLeaderboardConfigurationPublicV1Unauthorized() *CreateLeaderboardConfigurationPublicV1Unauthorized {
	return &CreateLeaderboardConfigurationPublicV1Unauthorized{}
}

/*CreateLeaderboardConfigurationPublicV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateLeaderboardConfigurationPublicV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationPublicV1Unauthorized) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationPublicV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationPublicV1Forbidden creates a CreateLeaderboardConfigurationPublicV1Forbidden with default headers values
func NewCreateLeaderboardConfigurationPublicV1Forbidden() *CreateLeaderboardConfigurationPublicV1Forbidden {
	return &CreateLeaderboardConfigurationPublicV1Forbidden{}
}

/*CreateLeaderboardConfigurationPublicV1Forbidden handles this case with default header values.

  Forbidden
*/
type CreateLeaderboardConfigurationPublicV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationPublicV1Forbidden) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationPublicV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationPublicV1Conflict creates a CreateLeaderboardConfigurationPublicV1Conflict with default headers values
func NewCreateLeaderboardConfigurationPublicV1Conflict() *CreateLeaderboardConfigurationPublicV1Conflict {
	return &CreateLeaderboardConfigurationPublicV1Conflict{}
}

/*CreateLeaderboardConfigurationPublicV1Conflict handles this case with default header values.

  Conflict
*/
type CreateLeaderboardConfigurationPublicV1Conflict struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationPublicV1Conflict) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationPublicV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationPublicV1Conflict) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationPublicV1Conflict) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationPublicV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateLeaderboardConfigurationPublicV1InternalServerError creates a CreateLeaderboardConfigurationPublicV1InternalServerError with default headers values
func NewCreateLeaderboardConfigurationPublicV1InternalServerError() *CreateLeaderboardConfigurationPublicV1InternalServerError {
	return &CreateLeaderboardConfigurationPublicV1InternalServerError{}
}

/*CreateLeaderboardConfigurationPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateLeaderboardConfigurationPublicV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateLeaderboardConfigurationPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] createLeaderboardConfigurationPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateLeaderboardConfigurationPublicV1InternalServerError) ToJSONString() string {
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

func (o *CreateLeaderboardConfigurationPublicV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateLeaderboardConfigurationPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
