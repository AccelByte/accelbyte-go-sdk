// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package goal_configuration

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

// AdminGetChallengeSlotsReader is a Reader for the AdminGetChallengeSlots structure.
type AdminGetChallengeSlotsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetChallengeSlotsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetChallengeSlotsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetChallengeSlotsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetChallengeSlotsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetChallengeSlotsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminGetChallengeSlotsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetChallengeSlotsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/slots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetChallengeSlotsOK creates a AdminGetChallengeSlotsOK with default headers values
func NewAdminGetChallengeSlotsOK() *AdminGetChallengeSlotsOK {
	return &AdminGetChallengeSlotsOK{}
}

/*AdminGetChallengeSlotsOK handles this case with default header values.

  OK
*/
type AdminGetChallengeSlotsOK struct {
	Payload *challengeclientmodels.ModelGetSlotsResponse
}

func (o *AdminGetChallengeSlotsOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/slots][%d] adminGetChallengeSlotsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetChallengeSlotsOK) ToJSONString() string {
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

func (o *AdminGetChallengeSlotsOK) GetPayload() *challengeclientmodels.ModelGetSlotsResponse {
	return o.Payload
}

func (o *AdminGetChallengeSlotsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelGetSlotsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetChallengeSlotsUnauthorized creates a AdminGetChallengeSlotsUnauthorized with default headers values
func NewAdminGetChallengeSlotsUnauthorized() *AdminGetChallengeSlotsUnauthorized {
	return &AdminGetChallengeSlotsUnauthorized{}
}

/*AdminGetChallengeSlotsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetChallengeSlotsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetChallengeSlotsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/slots][%d] adminGetChallengeSlotsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetChallengeSlotsUnauthorized) ToJSONString() string {
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

func (o *AdminGetChallengeSlotsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetChallengeSlotsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeSlotsForbidden creates a AdminGetChallengeSlotsForbidden with default headers values
func NewAdminGetChallengeSlotsForbidden() *AdminGetChallengeSlotsForbidden {
	return &AdminGetChallengeSlotsForbidden{}
}

/*AdminGetChallengeSlotsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetChallengeSlotsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetChallengeSlotsForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/slots][%d] adminGetChallengeSlotsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetChallengeSlotsForbidden) ToJSONString() string {
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

func (o *AdminGetChallengeSlotsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetChallengeSlotsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeSlotsNotFound creates a AdminGetChallengeSlotsNotFound with default headers values
func NewAdminGetChallengeSlotsNotFound() *AdminGetChallengeSlotsNotFound {
	return &AdminGetChallengeSlotsNotFound{}
}

/*AdminGetChallengeSlotsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminGetChallengeSlotsNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetChallengeSlotsNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/slots][%d] adminGetChallengeSlotsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetChallengeSlotsNotFound) ToJSONString() string {
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

func (o *AdminGetChallengeSlotsNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChallengeSlotsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeSlotsUnprocessableEntity creates a AdminGetChallengeSlotsUnprocessableEntity with default headers values
func NewAdminGetChallengeSlotsUnprocessableEntity() *AdminGetChallengeSlotsUnprocessableEntity {
	return &AdminGetChallengeSlotsUnprocessableEntity{}
}

/*AdminGetChallengeSlotsUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99004</td><td>unprocessable entity: {{message}}</td></tr></table>
*/
type AdminGetChallengeSlotsUnprocessableEntity struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetChallengeSlotsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/slots][%d] adminGetChallengeSlotsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminGetChallengeSlotsUnprocessableEntity) ToJSONString() string {
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

func (o *AdminGetChallengeSlotsUnprocessableEntity) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChallengeSlotsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeSlotsInternalServerError creates a AdminGetChallengeSlotsInternalServerError with default headers values
func NewAdminGetChallengeSlotsInternalServerError() *AdminGetChallengeSlotsInternalServerError {
	return &AdminGetChallengeSlotsInternalServerError{}
}

/*AdminGetChallengeSlotsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminGetChallengeSlotsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetChallengeSlotsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/slots][%d] adminGetChallengeSlotsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetChallengeSlotsInternalServerError) ToJSONString() string {
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

func (o *AdminGetChallengeSlotsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChallengeSlotsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
