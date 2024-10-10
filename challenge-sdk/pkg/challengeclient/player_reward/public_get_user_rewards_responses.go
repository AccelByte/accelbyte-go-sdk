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

// PublicGetUserRewardsReader is a Reader for the PublicGetUserRewards structure.
type PublicGetUserRewardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserRewardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserRewardsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserRewardsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserRewardsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserRewardsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/public/namespaces/{namespace}/users/me/rewards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserRewardsOK creates a PublicGetUserRewardsOK with default headers values
func NewPublicGetUserRewardsOK() *PublicGetUserRewardsOK {
	return &PublicGetUserRewardsOK{}
}

/*PublicGetUserRewardsOK handles this case with default header values.

  OK
*/
type PublicGetUserRewardsOK struct {
	Payload *challengeclientmodels.ModelListUserRewardsResponse
}

func (o *PublicGetUserRewardsOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/rewards][%d] publicGetUserRewardsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserRewardsOK) ToJSONString() string {
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

func (o *PublicGetUserRewardsOK) GetPayload() *challengeclientmodels.ModelListUserRewardsResponse {
	return o.Payload
}

func (o *PublicGetUserRewardsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelListUserRewardsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserRewardsUnauthorized creates a PublicGetUserRewardsUnauthorized with default headers values
func NewPublicGetUserRewardsUnauthorized() *PublicGetUserRewardsUnauthorized {
	return &PublicGetUserRewardsUnauthorized{}
}

/*PublicGetUserRewardsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetUserRewardsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetUserRewardsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/rewards][%d] publicGetUserRewardsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserRewardsUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserRewardsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetUserRewardsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserRewardsForbidden creates a PublicGetUserRewardsForbidden with default headers values
func NewPublicGetUserRewardsForbidden() *PublicGetUserRewardsForbidden {
	return &PublicGetUserRewardsForbidden{}
}

/*PublicGetUserRewardsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetUserRewardsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetUserRewardsForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/rewards][%d] publicGetUserRewardsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserRewardsForbidden) ToJSONString() string {
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

func (o *PublicGetUserRewardsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetUserRewardsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserRewardsInternalServerError creates a PublicGetUserRewardsInternalServerError with default headers values
func NewPublicGetUserRewardsInternalServerError() *PublicGetUserRewardsInternalServerError {
	return &PublicGetUserRewardsInternalServerError{}
}

/*PublicGetUserRewardsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicGetUserRewardsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicGetUserRewardsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/rewards][%d] publicGetUserRewardsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserRewardsInternalServerError) ToJSONString() string {
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

func (o *PublicGetUserRewardsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserRewardsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
