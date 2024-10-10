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

// AdminQueryPartyDetailReader is a Reader for the AdminQueryPartyDetail structure.
type AdminQueryPartyDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryPartyDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryPartyDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryPartyDetailBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryPartyDetailUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryPartyDetailForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryPartyDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/parties returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryPartyDetailOK creates a AdminQueryPartyDetailOK with default headers values
func NewAdminQueryPartyDetailOK() *AdminQueryPartyDetailOK {
	return &AdminQueryPartyDetailOK{}
}

/*AdminQueryPartyDetailOK handles this case with default header values.

  OK
*/
type AdminQueryPartyDetailOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsPartyDetailQueryResponse
}

func (o *AdminQueryPartyDetailOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartyDetailOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryPartyDetailOK) ToJSONString() string {
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

func (o *AdminQueryPartyDetailOK) GetPayload() *sessionhistoryclientmodels.ApimodelsPartyDetailQueryResponse {
	return o.Payload
}

func (o *AdminQueryPartyDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsPartyDetailQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryPartyDetailBadRequest creates a AdminQueryPartyDetailBadRequest with default headers values
func NewAdminQueryPartyDetailBadRequest() *AdminQueryPartyDetailBadRequest {
	return &AdminQueryPartyDetailBadRequest{}
}

/*AdminQueryPartyDetailBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryPartyDetailBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryPartyDetailBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartyDetailBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryPartyDetailBadRequest) ToJSONString() string {
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

func (o *AdminQueryPartyDetailBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPartyDetailBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPartyDetailUnauthorized creates a AdminQueryPartyDetailUnauthorized with default headers values
func NewAdminQueryPartyDetailUnauthorized() *AdminQueryPartyDetailUnauthorized {
	return &AdminQueryPartyDetailUnauthorized{}
}

/*AdminQueryPartyDetailUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryPartyDetailUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryPartyDetailUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartyDetailUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryPartyDetailUnauthorized) ToJSONString() string {
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

func (o *AdminQueryPartyDetailUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPartyDetailUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPartyDetailForbidden creates a AdminQueryPartyDetailForbidden with default headers values
func NewAdminQueryPartyDetailForbidden() *AdminQueryPartyDetailForbidden {
	return &AdminQueryPartyDetailForbidden{}
}

/*AdminQueryPartyDetailForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryPartyDetailForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryPartyDetailForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartyDetailForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryPartyDetailForbidden) ToJSONString() string {
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

func (o *AdminQueryPartyDetailForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPartyDetailForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPartyDetailInternalServerError creates a AdminQueryPartyDetailInternalServerError with default headers values
func NewAdminQueryPartyDetailInternalServerError() *AdminQueryPartyDetailInternalServerError {
	return &AdminQueryPartyDetailInternalServerError{}
}

/*AdminQueryPartyDetailInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryPartyDetailInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryPartyDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties][%d] adminQueryPartyDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryPartyDetailInternalServerError) ToJSONString() string {
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

func (o *AdminQueryPartyDetailInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPartyDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
