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

// AdminClaimUsersRewardsReader is a Reader for the AdminClaimUsersRewards structure.
type AdminClaimUsersRewardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminClaimUsersRewardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminClaimUsersRewardsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminClaimUsersRewardsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminClaimUsersRewardsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminClaimUsersRewardsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminClaimUsersRewardsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminClaimUsersRewardsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminClaimUsersRewardsOK creates a AdminClaimUsersRewardsOK with default headers values
func NewAdminClaimUsersRewardsOK() *AdminClaimUsersRewardsOK {
	return &AdminClaimUsersRewardsOK{}
}

/*AdminClaimUsersRewardsOK handles this case with default header values.

  OK
*/
type AdminClaimUsersRewardsOK struct {
	Payload []*challengeclientmodels.ModelClaimUsersRewardsResponse
}

func (o *AdminClaimUsersRewardsOK) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim][%d] adminClaimUsersRewardsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminClaimUsersRewardsOK) ToJSONString() string {
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

func (o *AdminClaimUsersRewardsOK) GetPayload() []*challengeclientmodels.ModelClaimUsersRewardsResponse {
	return o.Payload
}

func (o *AdminClaimUsersRewardsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUsersRewardsBadRequest creates a AdminClaimUsersRewardsBadRequest with default headers values
func NewAdminClaimUsersRewardsBadRequest() *AdminClaimUsersRewardsBadRequest {
	return &AdminClaimUsersRewardsBadRequest{}
}

/*AdminClaimUsersRewardsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminClaimUsersRewardsBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminClaimUsersRewardsBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim][%d] adminClaimUsersRewardsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminClaimUsersRewardsBadRequest) ToJSONString() string {
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

func (o *AdminClaimUsersRewardsBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminClaimUsersRewardsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUsersRewardsUnauthorized creates a AdminClaimUsersRewardsUnauthorized with default headers values
func NewAdminClaimUsersRewardsUnauthorized() *AdminClaimUsersRewardsUnauthorized {
	return &AdminClaimUsersRewardsUnauthorized{}
}

/*AdminClaimUsersRewardsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminClaimUsersRewardsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUsersRewardsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim][%d] adminClaimUsersRewardsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminClaimUsersRewardsUnauthorized) ToJSONString() string {
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

func (o *AdminClaimUsersRewardsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUsersRewardsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUsersRewardsForbidden creates a AdminClaimUsersRewardsForbidden with default headers values
func NewAdminClaimUsersRewardsForbidden() *AdminClaimUsersRewardsForbidden {
	return &AdminClaimUsersRewardsForbidden{}
}

/*AdminClaimUsersRewardsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminClaimUsersRewardsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUsersRewardsForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim][%d] adminClaimUsersRewardsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminClaimUsersRewardsForbidden) ToJSONString() string {
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

func (o *AdminClaimUsersRewardsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUsersRewardsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUsersRewardsNotFound creates a AdminClaimUsersRewardsNotFound with default headers values
func NewAdminClaimUsersRewardsNotFound() *AdminClaimUsersRewardsNotFound {
	return &AdminClaimUsersRewardsNotFound{}
}

/*AdminClaimUsersRewardsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminClaimUsersRewardsNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUsersRewardsNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim][%d] adminClaimUsersRewardsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminClaimUsersRewardsNotFound) ToJSONString() string {
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

func (o *AdminClaimUsersRewardsNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUsersRewardsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUsersRewardsInternalServerError creates a AdminClaimUsersRewardsInternalServerError with default headers values
func NewAdminClaimUsersRewardsInternalServerError() *AdminClaimUsersRewardsInternalServerError {
	return &AdminClaimUsersRewardsInternalServerError{}
}

/*AdminClaimUsersRewardsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminClaimUsersRewardsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminClaimUsersRewardsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim][%d] adminClaimUsersRewardsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminClaimUsersRewardsInternalServerError) ToJSONString() string {
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

func (o *AdminClaimUsersRewardsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminClaimUsersRewardsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
