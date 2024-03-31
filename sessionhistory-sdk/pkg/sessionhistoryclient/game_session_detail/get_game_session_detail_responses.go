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

// GetGameSessionDetailReader is a Reader for the GetGameSessionDetail structure.
type GetGameSessionDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGameSessionDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGameSessionDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGameSessionDetailBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGameSessionDetailUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGameSessionDetailForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGameSessionDetailNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGameSessionDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGameSessionDetailOK creates a GetGameSessionDetailOK with default headers values
func NewGetGameSessionDetailOK() *GetGameSessionDetailOK {
	return &GetGameSessionDetailOK{}
}

/*GetGameSessionDetailOK handles this case with default header values.

  OK
*/
type GetGameSessionDetailOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsGameSessionDetail
}

func (o *GetGameSessionDetailOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionDetailOK  %+v", 200, o.ToJSONString())
}

func (o *GetGameSessionDetailOK) ToJSONString() string {
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

func (o *GetGameSessionDetailOK) GetPayload() *sessionhistoryclientmodels.ApimodelsGameSessionDetail {
	return o.Payload
}

func (o *GetGameSessionDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsGameSessionDetail)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGameSessionDetailBadRequest creates a GetGameSessionDetailBadRequest with default headers values
func NewGetGameSessionDetailBadRequest() *GetGameSessionDetailBadRequest {
	return &GetGameSessionDetailBadRequest{}
}

/*GetGameSessionDetailBadRequest handles this case with default header values.

  Bad Request
*/
type GetGameSessionDetailBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetGameSessionDetailBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionDetailBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGameSessionDetailBadRequest) ToJSONString() string {
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

func (o *GetGameSessionDetailBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionDetailBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionDetailUnauthorized creates a GetGameSessionDetailUnauthorized with default headers values
func NewGetGameSessionDetailUnauthorized() *GetGameSessionDetailUnauthorized {
	return &GetGameSessionDetailUnauthorized{}
}

/*GetGameSessionDetailUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetGameSessionDetailUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetGameSessionDetailUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionDetailUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGameSessionDetailUnauthorized) ToJSONString() string {
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

func (o *GetGameSessionDetailUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionDetailUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionDetailForbidden creates a GetGameSessionDetailForbidden with default headers values
func NewGetGameSessionDetailForbidden() *GetGameSessionDetailForbidden {
	return &GetGameSessionDetailForbidden{}
}

/*GetGameSessionDetailForbidden handles this case with default header values.

  Forbidden
*/
type GetGameSessionDetailForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetGameSessionDetailForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionDetailForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGameSessionDetailForbidden) ToJSONString() string {
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

func (o *GetGameSessionDetailForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionDetailForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionDetailNotFound creates a GetGameSessionDetailNotFound with default headers values
func NewGetGameSessionDetailNotFound() *GetGameSessionDetailNotFound {
	return &GetGameSessionDetailNotFound{}
}

/*GetGameSessionDetailNotFound handles this case with default header values.

  Not Found
*/
type GetGameSessionDetailNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetGameSessionDetailNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionDetailNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGameSessionDetailNotFound) ToJSONString() string {
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

func (o *GetGameSessionDetailNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionDetailNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionDetailInternalServerError creates a GetGameSessionDetailInternalServerError with default headers values
func NewGetGameSessionDetailInternalServerError() *GetGameSessionDetailInternalServerError {
	return &GetGameSessionDetailInternalServerError{}
}

/*GetGameSessionDetailInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGameSessionDetailInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetGameSessionDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGameSessionDetailInternalServerError) ToJSONString() string {
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

func (o *GetGameSessionDetailInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
