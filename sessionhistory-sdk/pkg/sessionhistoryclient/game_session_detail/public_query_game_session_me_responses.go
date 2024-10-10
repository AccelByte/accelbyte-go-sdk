// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// PublicQueryGameSessionMeReader is a Reader for the PublicQueryGameSessionMe structure.
type PublicQueryGameSessionMeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryGameSessionMeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryGameSessionMeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicQueryGameSessionMeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicQueryGameSessionMeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicQueryGameSessionMeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicQueryGameSessionMeTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicQueryGameSessionMeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryGameSessionMeOK creates a PublicQueryGameSessionMeOK with default headers values
func NewPublicQueryGameSessionMeOK() *PublicQueryGameSessionMeOK {
	return &PublicQueryGameSessionMeOK{}
}

/*PublicQueryGameSessionMeOK handles this case with default header values.

  OK
*/
type PublicQueryGameSessionMeOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse
}

func (o *PublicQueryGameSessionMeOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryGameSessionMeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryGameSessionMeOK) ToJSONString() string {
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

func (o *PublicQueryGameSessionMeOK) GetPayload() *sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse {
	return o.Payload
}

func (o *PublicQueryGameSessionMeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryGameSessionMeBadRequest creates a PublicQueryGameSessionMeBadRequest with default headers values
func NewPublicQueryGameSessionMeBadRequest() *PublicQueryGameSessionMeBadRequest {
	return &PublicQueryGameSessionMeBadRequest{}
}

/*PublicQueryGameSessionMeBadRequest handles this case with default header values.

  Bad Request
*/
type PublicQueryGameSessionMeBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *PublicQueryGameSessionMeBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryGameSessionMeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicQueryGameSessionMeBadRequest) ToJSONString() string {
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

func (o *PublicQueryGameSessionMeBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionMeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryGameSessionMeUnauthorized creates a PublicQueryGameSessionMeUnauthorized with default headers values
func NewPublicQueryGameSessionMeUnauthorized() *PublicQueryGameSessionMeUnauthorized {
	return &PublicQueryGameSessionMeUnauthorized{}
}

/*PublicQueryGameSessionMeUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicQueryGameSessionMeUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *PublicQueryGameSessionMeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryGameSessionMeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicQueryGameSessionMeUnauthorized) ToJSONString() string {
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

func (o *PublicQueryGameSessionMeUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionMeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryGameSessionMeForbidden creates a PublicQueryGameSessionMeForbidden with default headers values
func NewPublicQueryGameSessionMeForbidden() *PublicQueryGameSessionMeForbidden {
	return &PublicQueryGameSessionMeForbidden{}
}

/*PublicQueryGameSessionMeForbidden handles this case with default header values.

  Forbidden
*/
type PublicQueryGameSessionMeForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *PublicQueryGameSessionMeForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryGameSessionMeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicQueryGameSessionMeForbidden) ToJSONString() string {
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

func (o *PublicQueryGameSessionMeForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionMeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryGameSessionMeTooManyRequests creates a PublicQueryGameSessionMeTooManyRequests with default headers values
func NewPublicQueryGameSessionMeTooManyRequests() *PublicQueryGameSessionMeTooManyRequests {
	return &PublicQueryGameSessionMeTooManyRequests{}
}

/*PublicQueryGameSessionMeTooManyRequests handles this case with default header values.

  Too Many Requests
*/
type PublicQueryGameSessionMeTooManyRequests struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *PublicQueryGameSessionMeTooManyRequests) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryGameSessionMeTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicQueryGameSessionMeTooManyRequests) ToJSONString() string {
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

func (o *PublicQueryGameSessionMeTooManyRequests) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionMeTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryGameSessionMeInternalServerError creates a PublicQueryGameSessionMeInternalServerError with default headers values
func NewPublicQueryGameSessionMeInternalServerError() *PublicQueryGameSessionMeInternalServerError {
	return &PublicQueryGameSessionMeInternalServerError{}
}

/*PublicQueryGameSessionMeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicQueryGameSessionMeInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *PublicQueryGameSessionMeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryGameSessionMeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicQueryGameSessionMeInternalServerError) ToJSONString() string {
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

func (o *PublicQueryGameSessionMeInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionMeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
