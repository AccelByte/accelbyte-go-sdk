// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_configuration

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

// AdminUpdateChallengeReader is a Reader for the AdminUpdateChallenge structure.
type AdminUpdateChallengeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateChallengeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateChallengeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateChallengeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateChallengeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateChallengeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateChallengeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminUpdateChallengeUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateChallengeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateChallengeOK creates a AdminUpdateChallengeOK with default headers values
func NewAdminUpdateChallengeOK() *AdminUpdateChallengeOK {
	return &AdminUpdateChallengeOK{}
}

/*AdminUpdateChallengeOK handles this case with default header values.

  OK
*/
type AdminUpdateChallengeOK struct {
	Payload *challengeclientmodels.ModelChallengeResponse
}

func (o *AdminUpdateChallengeOK) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminUpdateChallengeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateChallengeOK) ToJSONString() string {
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

func (o *AdminUpdateChallengeOK) GetPayload() *challengeclientmodels.ModelChallengeResponse {
	return o.Payload
}

func (o *AdminUpdateChallengeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelChallengeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateChallengeBadRequest creates a AdminUpdateChallengeBadRequest with default headers values
func NewAdminUpdateChallengeBadRequest() *AdminUpdateChallengeBadRequest {
	return &AdminUpdateChallengeBadRequest{}
}

/*AdminUpdateChallengeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminUpdateChallengeBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateChallengeBadRequest) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminUpdateChallengeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateChallengeBadRequest) ToJSONString() string {
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

func (o *AdminUpdateChallengeBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChallengeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChallengeUnauthorized creates a AdminUpdateChallengeUnauthorized with default headers values
func NewAdminUpdateChallengeUnauthorized() *AdminUpdateChallengeUnauthorized {
	return &AdminUpdateChallengeUnauthorized{}
}

/*AdminUpdateChallengeUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateChallengeUnauthorized struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateChallengeUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminUpdateChallengeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateChallengeUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateChallengeUnauthorized) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChallengeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChallengeForbidden creates a AdminUpdateChallengeForbidden with default headers values
func NewAdminUpdateChallengeForbidden() *AdminUpdateChallengeForbidden {
	return &AdminUpdateChallengeForbidden{}
}

/*AdminUpdateChallengeForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateChallengeForbidden struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateChallengeForbidden) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminUpdateChallengeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateChallengeForbidden) ToJSONString() string {
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

func (o *AdminUpdateChallengeForbidden) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChallengeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChallengeNotFound creates a AdminUpdateChallengeNotFound with default headers values
func NewAdminUpdateChallengeNotFound() *AdminUpdateChallengeNotFound {
	return &AdminUpdateChallengeNotFound{}
}

/*AdminUpdateChallengeNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateChallengeNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateChallengeNotFound) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminUpdateChallengeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateChallengeNotFound) ToJSONString() string {
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

func (o *AdminUpdateChallengeNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChallengeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChallengeUnprocessableEntity creates a AdminUpdateChallengeUnprocessableEntity with default headers values
func NewAdminUpdateChallengeUnprocessableEntity() *AdminUpdateChallengeUnprocessableEntity {
	return &AdminUpdateChallengeUnprocessableEntity{}
}

/*AdminUpdateChallengeUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type AdminUpdateChallengeUnprocessableEntity struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateChallengeUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminUpdateChallengeUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminUpdateChallengeUnprocessableEntity) ToJSONString() string {
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

func (o *AdminUpdateChallengeUnprocessableEntity) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChallengeUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChallengeInternalServerError creates a AdminUpdateChallengeInternalServerError with default headers values
func NewAdminUpdateChallengeInternalServerError() *AdminUpdateChallengeInternalServerError {
	return &AdminUpdateChallengeInternalServerError{}
}

/*AdminUpdateChallengeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateChallengeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateChallengeInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminUpdateChallengeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateChallengeInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateChallengeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChallengeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
