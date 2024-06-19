// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player_reward

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
)

// AdminClaimUserRewardsReader is a Reader for the AdminClaimUserRewards structure.
type AdminClaimUserRewardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminClaimUserRewardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminClaimUserRewardsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminClaimUserRewardsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminClaimUserRewardsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminClaimUserRewardsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminClaimUserRewardsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminClaimUserRewardsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminClaimUserRewardsOK creates a AdminClaimUserRewardsOK with default headers values
func NewAdminClaimUserRewardsOK() *AdminClaimUserRewardsOK {
	return &AdminClaimUserRewardsOK{}
}

/*AdminClaimUserRewardsOK handles this case with default header values.

  OK
*/
type AdminClaimUserRewardsOK struct {
	Payload []*challengeclientmodels.ModelUserReward
}

func (o *AdminClaimUserRewardsOK) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim][%d] adminClaimUserRewardsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminClaimUserRewardsOK) ToJSONString() string {
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

func (o *AdminClaimUserRewardsOK) GetPayload() []*challengeclientmodels.ModelUserReward {
	return o.Payload
}

func (o *AdminClaimUserRewardsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminClaimUserRewardsUnauthorized creates a AdminClaimUserRewardsUnauthorized with default headers values
func NewAdminClaimUserRewardsUnauthorized() *AdminClaimUserRewardsUnauthorized {
	return &AdminClaimUserRewardsUnauthorized{}
}

/*AdminClaimUserRewardsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminClaimUserRewardsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim][%d] adminClaimUserRewardsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminClaimUserRewardsUnauthorized) ToJSONString() string {
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

func (o *AdminClaimUserRewardsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminClaimUserRewardsForbidden creates a AdminClaimUserRewardsForbidden with default headers values
func NewAdminClaimUserRewardsForbidden() *AdminClaimUserRewardsForbidden {
	return &AdminClaimUserRewardsForbidden{}
}

/*AdminClaimUserRewardsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminClaimUserRewardsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim][%d] adminClaimUserRewardsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminClaimUserRewardsForbidden) ToJSONString() string {
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

func (o *AdminClaimUserRewardsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminClaimUserRewardsNotFound creates a AdminClaimUserRewardsNotFound with default headers values
func NewAdminClaimUserRewardsNotFound() *AdminClaimUserRewardsNotFound {
	return &AdminClaimUserRewardsNotFound{}
}

/*AdminClaimUserRewardsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminClaimUserRewardsNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim][%d] adminClaimUserRewardsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminClaimUserRewardsNotFound) ToJSONString() string {
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

func (o *AdminClaimUserRewardsNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminClaimUserRewardsUnprocessableEntity creates a AdminClaimUserRewardsUnprocessableEntity with default headers values
func NewAdminClaimUserRewardsUnprocessableEntity() *AdminClaimUserRewardsUnprocessableEntity {
	return &AdminClaimUserRewardsUnprocessableEntity{}
}

/*AdminClaimUserRewardsUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99004</td><td>unprocessable entity: {{message}}</td></tr></table>
*/
type AdminClaimUserRewardsUnprocessableEntity struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim][%d] adminClaimUserRewardsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminClaimUserRewardsUnprocessableEntity) ToJSONString() string {
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

func (o *AdminClaimUserRewardsUnprocessableEntity) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminClaimUserRewardsInternalServerError creates a AdminClaimUserRewardsInternalServerError with default headers values
func NewAdminClaimUserRewardsInternalServerError() *AdminClaimUserRewardsInternalServerError {
	return &AdminClaimUserRewardsInternalServerError{}
}

/*AdminClaimUserRewardsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminClaimUserRewardsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminClaimUserRewardsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim][%d] adminClaimUserRewardsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminClaimUserRewardsInternalServerError) ToJSONString() string {
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

func (o *AdminClaimUserRewardsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminClaimUserRewardsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
