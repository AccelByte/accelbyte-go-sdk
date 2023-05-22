// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// GetServerSessionTimeoutReader is a Reader for the GetServerSessionTimeout structure.
type GetServerSessionTimeoutReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetServerSessionTimeoutReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetServerSessionTimeoutOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetServerSessionTimeoutBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetServerSessionTimeoutUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetServerSessionTimeoutNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetServerSessionTimeoutInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetServerSessionTimeoutOK creates a GetServerSessionTimeoutOK with default headers values
func NewGetServerSessionTimeoutOK() *GetServerSessionTimeoutOK {
	return &GetServerSessionTimeoutOK{}
}

/*GetServerSessionTimeoutOK handles this case with default header values.

  session timout successfully retrieved
*/
type GetServerSessionTimeoutOK struct {
	Payload *dsmcclientmodels.ModelsServerDeploymentConfigSessionTimeoutResponse
}

func (o *GetServerSessionTimeoutOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout][%d] getServerSessionTimeoutOK  %+v", 200, o.ToJSONString())
}

func (o *GetServerSessionTimeoutOK) ToJSONString() string {
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

func (o *GetServerSessionTimeoutOK) GetPayload() *dsmcclientmodels.ModelsServerDeploymentConfigSessionTimeoutResponse {
	return o.Payload
}

func (o *GetServerSessionTimeoutOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsServerDeploymentConfigSessionTimeoutResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerSessionTimeoutBadRequest creates a GetServerSessionTimeoutBadRequest with default headers values
func NewGetServerSessionTimeoutBadRequest() *GetServerSessionTimeoutBadRequest {
	return &GetServerSessionTimeoutBadRequest{}
}

/*GetServerSessionTimeoutBadRequest handles this case with default header values.

  malformed request
*/
type GetServerSessionTimeoutBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionTimeoutBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout][%d] getServerSessionTimeoutBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetServerSessionTimeoutBadRequest) ToJSONString() string {
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

func (o *GetServerSessionTimeoutBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionTimeoutBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerSessionTimeoutUnauthorized creates a GetServerSessionTimeoutUnauthorized with default headers values
func NewGetServerSessionTimeoutUnauthorized() *GetServerSessionTimeoutUnauthorized {
	return &GetServerSessionTimeoutUnauthorized{}
}

/*GetServerSessionTimeoutUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetServerSessionTimeoutUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionTimeoutUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout][%d] getServerSessionTimeoutUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetServerSessionTimeoutUnauthorized) ToJSONString() string {
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

func (o *GetServerSessionTimeoutUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionTimeoutUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerSessionTimeoutNotFound creates a GetServerSessionTimeoutNotFound with default headers values
func NewGetServerSessionTimeoutNotFound() *GetServerSessionTimeoutNotFound {
	return &GetServerSessionTimeoutNotFound{}
}

/*GetServerSessionTimeoutNotFound handles this case with default header values.

  server not found
*/
type GetServerSessionTimeoutNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionTimeoutNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout][%d] getServerSessionTimeoutNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetServerSessionTimeoutNotFound) ToJSONString() string {
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

func (o *GetServerSessionTimeoutNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionTimeoutNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerSessionTimeoutInternalServerError creates a GetServerSessionTimeoutInternalServerError with default headers values
func NewGetServerSessionTimeoutInternalServerError() *GetServerSessionTimeoutInternalServerError {
	return &GetServerSessionTimeoutInternalServerError{}
}

/*GetServerSessionTimeoutInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetServerSessionTimeoutInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionTimeoutInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout][%d] getServerSessionTimeoutInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetServerSessionTimeoutInternalServerError) ToJSONString() string {
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

func (o *GetServerSessionTimeoutInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionTimeoutInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
