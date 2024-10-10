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

// AdminGetMatchmakingDetailBySessionIDReader is a Reader for the AdminGetMatchmakingDetailBySessionID structure.
type AdminGetMatchmakingDetailBySessionIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetMatchmakingDetailBySessionIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetMatchmakingDetailBySessionIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetMatchmakingDetailBySessionIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetMatchmakingDetailBySessionIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetMatchmakingDetailBySessionIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetMatchmakingDetailBySessionIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetMatchmakingDetailBySessionIDOK creates a AdminGetMatchmakingDetailBySessionIDOK with default headers values
func NewAdminGetMatchmakingDetailBySessionIDOK() *AdminGetMatchmakingDetailBySessionIDOK {
	return &AdminGetMatchmakingDetailBySessionIDOK{}
}

/*AdminGetMatchmakingDetailBySessionIDOK handles this case with default header values.

  OK
*/
type AdminGetMatchmakingDetailBySessionIDOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsMatchmakingDetail
}

func (o *AdminGetMatchmakingDetailBySessionIDOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}][%d] adminGetMatchmakingDetailBySessionIdOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailBySessionIDOK) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailBySessionIDOK) GetPayload() *sessionhistoryclientmodels.ApimodelsMatchmakingDetail {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailBySessionIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsMatchmakingDetail)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMatchmakingDetailBySessionIDBadRequest creates a AdminGetMatchmakingDetailBySessionIDBadRequest with default headers values
func NewAdminGetMatchmakingDetailBySessionIDBadRequest() *AdminGetMatchmakingDetailBySessionIDBadRequest {
	return &AdminGetMatchmakingDetailBySessionIDBadRequest{}
}

/*AdminGetMatchmakingDetailBySessionIDBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetMatchmakingDetailBySessionIDBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailBySessionIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}][%d] adminGetMatchmakingDetailBySessionIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailBySessionIDBadRequest) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailBySessionIDBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailBySessionIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMatchmakingDetailBySessionIDUnauthorized creates a AdminGetMatchmakingDetailBySessionIDUnauthorized with default headers values
func NewAdminGetMatchmakingDetailBySessionIDUnauthorized() *AdminGetMatchmakingDetailBySessionIDUnauthorized {
	return &AdminGetMatchmakingDetailBySessionIDUnauthorized{}
}

/*AdminGetMatchmakingDetailBySessionIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetMatchmakingDetailBySessionIDUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailBySessionIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}][%d] adminGetMatchmakingDetailBySessionIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailBySessionIDUnauthorized) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailBySessionIDUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailBySessionIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMatchmakingDetailBySessionIDForbidden creates a AdminGetMatchmakingDetailBySessionIDForbidden with default headers values
func NewAdminGetMatchmakingDetailBySessionIDForbidden() *AdminGetMatchmakingDetailBySessionIDForbidden {
	return &AdminGetMatchmakingDetailBySessionIDForbidden{}
}

/*AdminGetMatchmakingDetailBySessionIDForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetMatchmakingDetailBySessionIDForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailBySessionIDForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}][%d] adminGetMatchmakingDetailBySessionIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailBySessionIDForbidden) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailBySessionIDForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailBySessionIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMatchmakingDetailBySessionIDInternalServerError creates a AdminGetMatchmakingDetailBySessionIDInternalServerError with default headers values
func NewAdminGetMatchmakingDetailBySessionIDInternalServerError() *AdminGetMatchmakingDetailBySessionIDInternalServerError {
	return &AdminGetMatchmakingDetailBySessionIDInternalServerError{}
}

/*AdminGetMatchmakingDetailBySessionIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetMatchmakingDetailBySessionIDInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailBySessionIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}][%d] adminGetMatchmakingDetailBySessionIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailBySessionIDInternalServerError) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailBySessionIDInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailBySessionIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
