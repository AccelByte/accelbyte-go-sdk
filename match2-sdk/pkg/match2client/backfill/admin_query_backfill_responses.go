// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package backfill

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

// AdminQueryBackfillReader is a Reader for the AdminQueryBackfill structure.
type AdminQueryBackfillReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryBackfillReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryBackfillOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryBackfillBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryBackfillUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryBackfillForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminQueryBackfillNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryBackfillInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/backfill returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryBackfillOK creates a AdminQueryBackfillOK with default headers values
func NewAdminQueryBackfillOK() *AdminQueryBackfillOK {
	return &AdminQueryBackfillOK{}
}

/*AdminQueryBackfillOK handles this case with default header values.

  OK
*/
type AdminQueryBackfillOK struct {
	Payload *match2clientmodels.APIListBackfillQueryResponse
}

func (o *AdminQueryBackfillOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill][%d] adminQueryBackfillOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryBackfillOK) ToJSONString() string {
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

func (o *AdminQueryBackfillOK) GetPayload() *match2clientmodels.APIListBackfillQueryResponse {
	return o.Payload
}

func (o *AdminQueryBackfillOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIListBackfillQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryBackfillBadRequest creates a AdminQueryBackfillBadRequest with default headers values
func NewAdminQueryBackfillBadRequest() *AdminQueryBackfillBadRequest {
	return &AdminQueryBackfillBadRequest{}
}

/*AdminQueryBackfillBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryBackfillBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminQueryBackfillBadRequest) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill][%d] adminQueryBackfillBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryBackfillBadRequest) ToJSONString() string {
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

func (o *AdminQueryBackfillBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryBackfillBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryBackfillUnauthorized creates a AdminQueryBackfillUnauthorized with default headers values
func NewAdminQueryBackfillUnauthorized() *AdminQueryBackfillUnauthorized {
	return &AdminQueryBackfillUnauthorized{}
}

/*AdminQueryBackfillUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryBackfillUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminQueryBackfillUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill][%d] adminQueryBackfillUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryBackfillUnauthorized) ToJSONString() string {
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

func (o *AdminQueryBackfillUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryBackfillUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryBackfillForbidden creates a AdminQueryBackfillForbidden with default headers values
func NewAdminQueryBackfillForbidden() *AdminQueryBackfillForbidden {
	return &AdminQueryBackfillForbidden{}
}

/*AdminQueryBackfillForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryBackfillForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminQueryBackfillForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill][%d] adminQueryBackfillForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryBackfillForbidden) ToJSONString() string {
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

func (o *AdminQueryBackfillForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryBackfillForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryBackfillNotFound creates a AdminQueryBackfillNotFound with default headers values
func NewAdminQueryBackfillNotFound() *AdminQueryBackfillNotFound {
	return &AdminQueryBackfillNotFound{}
}

/*AdminQueryBackfillNotFound handles this case with default header values.

  Not Found
*/
type AdminQueryBackfillNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminQueryBackfillNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill][%d] adminQueryBackfillNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminQueryBackfillNotFound) ToJSONString() string {
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

func (o *AdminQueryBackfillNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryBackfillNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryBackfillInternalServerError creates a AdminQueryBackfillInternalServerError with default headers values
func NewAdminQueryBackfillInternalServerError() *AdminQueryBackfillInternalServerError {
	return &AdminQueryBackfillInternalServerError{}
}

/*AdminQueryBackfillInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryBackfillInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminQueryBackfillInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill][%d] adminQueryBackfillInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryBackfillInternalServerError) ToJSONString() string {
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

func (o *AdminQueryBackfillInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryBackfillInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
