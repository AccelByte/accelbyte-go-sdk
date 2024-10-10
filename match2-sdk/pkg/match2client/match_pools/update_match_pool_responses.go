// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// UpdateMatchPoolReader is a Reader for the UpdateMatchPool structure.
type UpdateMatchPoolReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMatchPoolReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateMatchPoolOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMatchPoolBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMatchPoolUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateMatchPoolForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMatchPoolNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateMatchPoolInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /match2/v1/namespaces/{namespace}/match-pools/{pool} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMatchPoolOK creates a UpdateMatchPoolOK with default headers values
func NewUpdateMatchPoolOK() *UpdateMatchPoolOK {
	return &UpdateMatchPoolOK{}
}

/*UpdateMatchPoolOK handles this case with default header values.

  OK
*/
type UpdateMatchPoolOK struct {
	Payload *match2clientmodels.APIMatchPool
}

func (o *UpdateMatchPoolOK) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] updateMatchPoolOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateMatchPoolOK) ToJSONString() string {
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

func (o *UpdateMatchPoolOK) GetPayload() *match2clientmodels.APIMatchPool {
	return o.Payload
}

func (o *UpdateMatchPoolOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIMatchPool)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchPoolBadRequest creates a UpdateMatchPoolBadRequest with default headers values
func NewUpdateMatchPoolBadRequest() *UpdateMatchPoolBadRequest {
	return &UpdateMatchPoolBadRequest{}
}

/*UpdateMatchPoolBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateMatchPoolBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchPoolBadRequest) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] updateMatchPoolBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMatchPoolBadRequest) ToJSONString() string {
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

func (o *UpdateMatchPoolBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchPoolBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchPoolUnauthorized creates a UpdateMatchPoolUnauthorized with default headers values
func NewUpdateMatchPoolUnauthorized() *UpdateMatchPoolUnauthorized {
	return &UpdateMatchPoolUnauthorized{}
}

/*UpdateMatchPoolUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateMatchPoolUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchPoolUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] updateMatchPoolUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMatchPoolUnauthorized) ToJSONString() string {
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

func (o *UpdateMatchPoolUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchPoolUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchPoolForbidden creates a UpdateMatchPoolForbidden with default headers values
func NewUpdateMatchPoolForbidden() *UpdateMatchPoolForbidden {
	return &UpdateMatchPoolForbidden{}
}

/*UpdateMatchPoolForbidden handles this case with default header values.

  Forbidden
*/
type UpdateMatchPoolForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchPoolForbidden) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] updateMatchPoolForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateMatchPoolForbidden) ToJSONString() string {
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

func (o *UpdateMatchPoolForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchPoolForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchPoolNotFound creates a UpdateMatchPoolNotFound with default headers values
func NewUpdateMatchPoolNotFound() *UpdateMatchPoolNotFound {
	return &UpdateMatchPoolNotFound{}
}

/*UpdateMatchPoolNotFound handles this case with default header values.

  Forbidden
*/
type UpdateMatchPoolNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchPoolNotFound) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] updateMatchPoolNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMatchPoolNotFound) ToJSONString() string {
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

func (o *UpdateMatchPoolNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchPoolNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchPoolInternalServerError creates a UpdateMatchPoolInternalServerError with default headers values
func NewUpdateMatchPoolInternalServerError() *UpdateMatchPoolInternalServerError {
	return &UpdateMatchPoolInternalServerError{}
}

/*UpdateMatchPoolInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateMatchPoolInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchPoolInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] updateMatchPoolInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateMatchPoolInternalServerError) ToJSONString() string {
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

func (o *UpdateMatchPoolInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchPoolInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
