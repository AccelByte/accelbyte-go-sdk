// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_ui

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// ListAppUIReader is a Reader for the ListAppUI structure.
type ListAppUIReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListAppUIReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListAppUIOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListAppUIBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListAppUIInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/app-ui returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListAppUIOK creates a ListAppUIOK with default headers values
func NewListAppUIOK() *ListAppUIOK {
	return &ListAppUIOK{}
}

/*ListAppUIOK handles this case with default header values.

  OK
*/
type ListAppUIOK struct {
	Payload *csmclientmodels.ApimodelListAppUIResponse
}

func (o *ListAppUIOK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/app-ui][%d] listAppUiOK  %+v", 200, o.ToJSONString())
}

func (o *ListAppUIOK) ToJSONString() string {
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

func (o *ListAppUIOK) GetPayload() *csmclientmodels.ApimodelListAppUIResponse {
	return o.Payload
}

func (o *ListAppUIOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelListAppUIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListAppUIBadRequest creates a ListAppUIBadRequest with default headers values
func NewListAppUIBadRequest() *ListAppUIBadRequest {
	return &ListAppUIBadRequest{}
}

/*ListAppUIBadRequest handles this case with default header values.

  Bad Request
*/
type ListAppUIBadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ListAppUIBadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/app-ui][%d] listAppUiBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListAppUIBadRequest) ToJSONString() string {
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

func (o *ListAppUIBadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListAppUIBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListAppUIInternalServerError creates a ListAppUIInternalServerError with default headers values
func NewListAppUIInternalServerError() *ListAppUIInternalServerError {
	return &ListAppUIInternalServerError{}
}

/*ListAppUIInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListAppUIInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ListAppUIInternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/app-ui][%d] listAppUiInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListAppUIInternalServerError) ToJSONString() string {
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

func (o *ListAppUIInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListAppUIInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
