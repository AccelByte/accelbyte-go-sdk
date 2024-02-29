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

// PublicClaimUserRewardsReader is a Reader for the PublicClaimUserRewards structure.
type PublicClaimUserRewardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicClaimUserRewardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicClaimUserRewardsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicClaimUserRewardsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicClaimUserRewardsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicClaimUserRewardsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicClaimUserRewardsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicClaimUserRewardsOK creates a PublicClaimUserRewardsOK with default headers values
func NewPublicClaimUserRewardsOK() *PublicClaimUserRewardsOK {
	return &PublicClaimUserRewardsOK{}
}

/*PublicClaimUserRewardsOK handles this case with default header values.

  OK
*/
type PublicClaimUserRewardsOK struct {
	Payload []*challengeclientmodels.ModelUserReward
}

func (o *PublicClaimUserRewardsOK) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim][%d] publicClaimUserRewardsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicClaimUserRewardsOK) ToJSONString() string {
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

func (o *PublicClaimUserRewardsOK) GetPayload() []*challengeclientmodels.ModelUserReward {
	return o.Payload
}

func (o *PublicClaimUserRewardsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicClaimUserRewardsUnauthorized creates a PublicClaimUserRewardsUnauthorized with default headers values
func NewPublicClaimUserRewardsUnauthorized() *PublicClaimUserRewardsUnauthorized {
	return &PublicClaimUserRewardsUnauthorized{}
}

/*PublicClaimUserRewardsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicClaimUserRewardsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim][%d] publicClaimUserRewardsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicClaimUserRewardsUnauthorized) ToJSONString() string {
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

func (o *PublicClaimUserRewardsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicClaimUserRewardsForbidden creates a PublicClaimUserRewardsForbidden with default headers values
func NewPublicClaimUserRewardsForbidden() *PublicClaimUserRewardsForbidden {
	return &PublicClaimUserRewardsForbidden{}
}

/*PublicClaimUserRewardsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicClaimUserRewardsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim][%d] publicClaimUserRewardsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicClaimUserRewardsForbidden) ToJSONString() string {
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

func (o *PublicClaimUserRewardsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicClaimUserRewardsNotFound creates a PublicClaimUserRewardsNotFound with default headers values
func NewPublicClaimUserRewardsNotFound() *PublicClaimUserRewardsNotFound {
	return &PublicClaimUserRewardsNotFound{}
}

/*PublicClaimUserRewardsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type PublicClaimUserRewardsNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim][%d] publicClaimUserRewardsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicClaimUserRewardsNotFound) ToJSONString() string {
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

func (o *PublicClaimUserRewardsNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicClaimUserRewardsInternalServerError creates a PublicClaimUserRewardsInternalServerError with default headers values
func NewPublicClaimUserRewardsInternalServerError() *PublicClaimUserRewardsInternalServerError {
	return &PublicClaimUserRewardsInternalServerError{}
}

/*PublicClaimUserRewardsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicClaimUserRewardsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicClaimUserRewardsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim][%d] publicClaimUserRewardsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicClaimUserRewardsInternalServerError) ToJSONString() string {
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

func (o *PublicClaimUserRewardsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicClaimUserRewardsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
