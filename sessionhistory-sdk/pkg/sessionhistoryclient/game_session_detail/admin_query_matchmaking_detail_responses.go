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

// AdminQueryMatchmakingDetailReader is a Reader for the AdminQueryMatchmakingDetail structure.
type AdminQueryMatchmakingDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryMatchmakingDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryMatchmakingDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryMatchmakingDetailBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryMatchmakingDetailUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryMatchmakingDetailForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryMatchmakingDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryMatchmakingDetailOK creates a AdminQueryMatchmakingDetailOK with default headers values
func NewAdminQueryMatchmakingDetailOK() *AdminQueryMatchmakingDetailOK {
	return &AdminQueryMatchmakingDetailOK{}
}

/*AdminQueryMatchmakingDetailOK handles this case with default header values.

  OK
*/
type AdminQueryMatchmakingDetailOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsMatchmakingDetailQueryResponse
}

func (o *AdminQueryMatchmakingDetailOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking][%d] adminQueryMatchmakingDetailOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryMatchmakingDetailOK) ToJSONString() string {
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

func (o *AdminQueryMatchmakingDetailOK) GetPayload() *sessionhistoryclientmodels.ApimodelsMatchmakingDetailQueryResponse {
	return o.Payload
}

func (o *AdminQueryMatchmakingDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsMatchmakingDetailQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryMatchmakingDetailBadRequest creates a AdminQueryMatchmakingDetailBadRequest with default headers values
func NewAdminQueryMatchmakingDetailBadRequest() *AdminQueryMatchmakingDetailBadRequest {
	return &AdminQueryMatchmakingDetailBadRequest{}
}

/*AdminQueryMatchmakingDetailBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryMatchmakingDetailBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryMatchmakingDetailBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking][%d] adminQueryMatchmakingDetailBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryMatchmakingDetailBadRequest) ToJSONString() string {
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

func (o *AdminQueryMatchmakingDetailBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryMatchmakingDetailBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryMatchmakingDetailUnauthorized creates a AdminQueryMatchmakingDetailUnauthorized with default headers values
func NewAdminQueryMatchmakingDetailUnauthorized() *AdminQueryMatchmakingDetailUnauthorized {
	return &AdminQueryMatchmakingDetailUnauthorized{}
}

/*AdminQueryMatchmakingDetailUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryMatchmakingDetailUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryMatchmakingDetailUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking][%d] adminQueryMatchmakingDetailUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryMatchmakingDetailUnauthorized) ToJSONString() string {
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

func (o *AdminQueryMatchmakingDetailUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryMatchmakingDetailUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryMatchmakingDetailForbidden creates a AdminQueryMatchmakingDetailForbidden with default headers values
func NewAdminQueryMatchmakingDetailForbidden() *AdminQueryMatchmakingDetailForbidden {
	return &AdminQueryMatchmakingDetailForbidden{}
}

/*AdminQueryMatchmakingDetailForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryMatchmakingDetailForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryMatchmakingDetailForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking][%d] adminQueryMatchmakingDetailForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryMatchmakingDetailForbidden) ToJSONString() string {
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

func (o *AdminQueryMatchmakingDetailForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryMatchmakingDetailForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryMatchmakingDetailInternalServerError creates a AdminQueryMatchmakingDetailInternalServerError with default headers values
func NewAdminQueryMatchmakingDetailInternalServerError() *AdminQueryMatchmakingDetailInternalServerError {
	return &AdminQueryMatchmakingDetailInternalServerError{}
}

/*AdminQueryMatchmakingDetailInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryMatchmakingDetailInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryMatchmakingDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking][%d] adminQueryMatchmakingDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryMatchmakingDetailInternalServerError) ToJSONString() string {
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

func (o *AdminQueryMatchmakingDetailInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryMatchmakingDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
