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

// AdminQueryGameSessionDetailReader is a Reader for the AdminQueryGameSessionDetail structure.
type AdminQueryGameSessionDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryGameSessionDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryGameSessionDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryGameSessionDetailBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryGameSessionDetailUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryGameSessionDetailForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryGameSessionDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryGameSessionDetailOK creates a AdminQueryGameSessionDetailOK with default headers values
func NewAdminQueryGameSessionDetailOK() *AdminQueryGameSessionDetailOK {
	return &AdminQueryGameSessionDetailOK{}
}

/*AdminQueryGameSessionDetailOK handles this case with default header values.

  OK
*/
type AdminQueryGameSessionDetailOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse
}

func (o *AdminQueryGameSessionDetailOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionDetailOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryGameSessionDetailOK) ToJSONString() string {
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

func (o *AdminQueryGameSessionDetailOK) GetPayload() *sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse {
	return o.Payload
}

func (o *AdminQueryGameSessionDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryGameSessionDetailBadRequest creates a AdminQueryGameSessionDetailBadRequest with default headers values
func NewAdminQueryGameSessionDetailBadRequest() *AdminQueryGameSessionDetailBadRequest {
	return &AdminQueryGameSessionDetailBadRequest{}
}

/*AdminQueryGameSessionDetailBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryGameSessionDetailBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryGameSessionDetailBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionDetailBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryGameSessionDetailBadRequest) ToJSONString() string {
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

func (o *AdminQueryGameSessionDetailBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionDetailBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryGameSessionDetailUnauthorized creates a AdminQueryGameSessionDetailUnauthorized with default headers values
func NewAdminQueryGameSessionDetailUnauthorized() *AdminQueryGameSessionDetailUnauthorized {
	return &AdminQueryGameSessionDetailUnauthorized{}
}

/*AdminQueryGameSessionDetailUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryGameSessionDetailUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryGameSessionDetailUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionDetailUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryGameSessionDetailUnauthorized) ToJSONString() string {
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

func (o *AdminQueryGameSessionDetailUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionDetailUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryGameSessionDetailForbidden creates a AdminQueryGameSessionDetailForbidden with default headers values
func NewAdminQueryGameSessionDetailForbidden() *AdminQueryGameSessionDetailForbidden {
	return &AdminQueryGameSessionDetailForbidden{}
}

/*AdminQueryGameSessionDetailForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryGameSessionDetailForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryGameSessionDetailForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionDetailForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryGameSessionDetailForbidden) ToJSONString() string {
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

func (o *AdminQueryGameSessionDetailForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionDetailForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryGameSessionDetailInternalServerError creates a AdminQueryGameSessionDetailInternalServerError with default headers values
func NewAdminQueryGameSessionDetailInternalServerError() *AdminQueryGameSessionDetailInternalServerError {
	return &AdminQueryGameSessionDetailInternalServerError{}
}

/*AdminQueryGameSessionDetailInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryGameSessionDetailInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryGameSessionDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryGameSessionDetailInternalServerError) ToJSONString() string {
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

func (o *AdminQueryGameSessionDetailInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
