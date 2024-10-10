// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// GetPodConfigReader is a Reader for the GetPodConfig structure.
type GetPodConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPodConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPodConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPodConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPodConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPodConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPodConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPodConfigOK creates a GetPodConfigOK with default headers values
func NewGetPodConfigOK() *GetPodConfigOK {
	return &GetPodConfigOK{}
}

/*GetPodConfigOK handles this case with default header values.

  ok
*/
type GetPodConfigOK struct {
	Payload *dsmcclientmodels.ModelsPodConfigRecord
}

func (o *GetPodConfigOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] getPodConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetPodConfigOK) ToJSONString() string {
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

func (o *GetPodConfigOK) GetPayload() *dsmcclientmodels.ModelsPodConfigRecord {
	return o.Payload
}

func (o *GetPodConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsPodConfigRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPodConfigBadRequest creates a GetPodConfigBadRequest with default headers values
func NewGetPodConfigBadRequest() *GetPodConfigBadRequest {
	return &GetPodConfigBadRequest{}
}

/*GetPodConfigBadRequest handles this case with default header values.

  malformed request
*/
type GetPodConfigBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetPodConfigBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] getPodConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPodConfigBadRequest) ToJSONString() string {
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

func (o *GetPodConfigBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPodConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPodConfigUnauthorized creates a GetPodConfigUnauthorized with default headers values
func NewGetPodConfigUnauthorized() *GetPodConfigUnauthorized {
	return &GetPodConfigUnauthorized{}
}

/*GetPodConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetPodConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetPodConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] getPodConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPodConfigUnauthorized) ToJSONString() string {
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

func (o *GetPodConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPodConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPodConfigNotFound creates a GetPodConfigNotFound with default headers values
func NewGetPodConfigNotFound() *GetPodConfigNotFound {
	return &GetPodConfigNotFound{}
}

/*GetPodConfigNotFound handles this case with default header values.

  pod name not found
*/
type GetPodConfigNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetPodConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] getPodConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPodConfigNotFound) ToJSONString() string {
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

func (o *GetPodConfigNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPodConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPodConfigInternalServerError creates a GetPodConfigInternalServerError with default headers values
func NewGetPodConfigInternalServerError() *GetPodConfigInternalServerError {
	return &GetPodConfigInternalServerError{}
}

/*GetPodConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPodConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetPodConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] getPodConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPodConfigInternalServerError) ToJSONString() string {
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

func (o *GetPodConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPodConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
