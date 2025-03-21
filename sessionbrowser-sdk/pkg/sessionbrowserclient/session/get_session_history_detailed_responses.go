// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// GetSessionHistoryDetailedReader is a Reader for the GetSessionHistoryDetailed structure.
type GetSessionHistoryDetailedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSessionHistoryDetailedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSessionHistoryDetailedOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetSessionHistoryDetailedBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSessionHistoryDetailedUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSessionHistoryDetailedForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSessionHistoryDetailedInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSessionHistoryDetailedOK creates a GetSessionHistoryDetailedOK with default headers values
func NewGetSessionHistoryDetailedOK() *GetSessionHistoryDetailedOK {
	return &GetSessionHistoryDetailedOK{}
}

/*GetSessionHistoryDetailedOK handles this case with default header values.

  Operation succeeded
*/
type GetSessionHistoryDetailedOK struct {
	Payload []*sessionbrowserclientmodels.ModelsGetSessionHistoryDetailedResponseItem
}

func (o *GetSessionHistoryDetailedOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed][%d] getSessionHistoryDetailedOK  %+v", 200, o.ToJSONString())
}

func (o *GetSessionHistoryDetailedOK) ToJSONString() string {
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

func (o *GetSessionHistoryDetailedOK) GetPayload() []*sessionbrowserclientmodels.ModelsGetSessionHistoryDetailedResponseItem {
	return o.Payload
}

func (o *GetSessionHistoryDetailedOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionHistoryDetailedBadRequest creates a GetSessionHistoryDetailedBadRequest with default headers values
func NewGetSessionHistoryDetailedBadRequest() *GetSessionHistoryDetailedBadRequest {
	return &GetSessionHistoryDetailedBadRequest{}
}

/*GetSessionHistoryDetailedBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type GetSessionHistoryDetailedBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorV1
}

func (o *GetSessionHistoryDetailedBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed][%d] getSessionHistoryDetailedBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetSessionHistoryDetailedBadRequest) ToJSONString() string {
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

func (o *GetSessionHistoryDetailedBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorV1 {
	return o.Payload
}

func (o *GetSessionHistoryDetailedBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionHistoryDetailedUnauthorized creates a GetSessionHistoryDetailedUnauthorized with default headers values
func NewGetSessionHistoryDetailedUnauthorized() *GetSessionHistoryDetailedUnauthorized {
	return &GetSessionHistoryDetailedUnauthorized{}
}

/*GetSessionHistoryDetailedUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetSessionHistoryDetailedUnauthorized struct {
	Payload *sessionbrowserclientmodels.RestapiErrorV1
}

func (o *GetSessionHistoryDetailedUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed][%d] getSessionHistoryDetailedUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSessionHistoryDetailedUnauthorized) ToJSONString() string {
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

func (o *GetSessionHistoryDetailedUnauthorized) GetPayload() *sessionbrowserclientmodels.RestapiErrorV1 {
	return o.Payload
}

func (o *GetSessionHistoryDetailedUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionHistoryDetailedForbidden creates a GetSessionHistoryDetailedForbidden with default headers values
func NewGetSessionHistoryDetailedForbidden() *GetSessionHistoryDetailedForbidden {
	return &GetSessionHistoryDetailedForbidden{}
}

/*GetSessionHistoryDetailedForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type GetSessionHistoryDetailedForbidden struct {
	Payload *sessionbrowserclientmodels.RestapiErrorV1
}

func (o *GetSessionHistoryDetailedForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed][%d] getSessionHistoryDetailedForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSessionHistoryDetailedForbidden) ToJSONString() string {
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

func (o *GetSessionHistoryDetailedForbidden) GetPayload() *sessionbrowserclientmodels.RestapiErrorV1 {
	return o.Payload
}

func (o *GetSessionHistoryDetailedForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionHistoryDetailedInternalServerError creates a GetSessionHistoryDetailedInternalServerError with default headers values
func NewGetSessionHistoryDetailedInternalServerError() *GetSessionHistoryDetailedInternalServerError {
	return &GetSessionHistoryDetailedInternalServerError{}
}

/*GetSessionHistoryDetailedInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetSessionHistoryDetailedInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorV1
}

func (o *GetSessionHistoryDetailedInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed][%d] getSessionHistoryDetailedInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSessionHistoryDetailedInternalServerError) ToJSONString() string {
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

func (o *GetSessionHistoryDetailedInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorV1 {
	return o.Payload
}

func (o *GetSessionHistoryDetailedInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
