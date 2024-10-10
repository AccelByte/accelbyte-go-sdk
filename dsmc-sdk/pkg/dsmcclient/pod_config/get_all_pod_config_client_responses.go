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

// GetAllPodConfigClientReader is a Reader for the GetAllPodConfigClient structure.
type GetAllPodConfigClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllPodConfigClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllPodConfigClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllPodConfigClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllPodConfigClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllPodConfigClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/configs/pods returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllPodConfigClientOK creates a GetAllPodConfigClientOK with default headers values
func NewGetAllPodConfigClientOK() *GetAllPodConfigClientOK {
	return &GetAllPodConfigClientOK{}
}

/*GetAllPodConfigClientOK handles this case with default header values.

  ok
*/
type GetAllPodConfigClientOK struct {
	Payload *dsmcclientmodels.ModelsListPodConfigResponse
}

func (o *GetAllPodConfigClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/pods][%d] getAllPodConfigClientOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllPodConfigClientOK) ToJSONString() string {
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

func (o *GetAllPodConfigClientOK) GetPayload() *dsmcclientmodels.ModelsListPodConfigResponse {
	return o.Payload
}

func (o *GetAllPodConfigClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsListPodConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllPodConfigClientBadRequest creates a GetAllPodConfigClientBadRequest with default headers values
func NewGetAllPodConfigClientBadRequest() *GetAllPodConfigClientBadRequest {
	return &GetAllPodConfigClientBadRequest{}
}

/*GetAllPodConfigClientBadRequest handles this case with default header values.

  malformed request
*/
type GetAllPodConfigClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllPodConfigClientBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/pods][%d] getAllPodConfigClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllPodConfigClientBadRequest) ToJSONString() string {
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

func (o *GetAllPodConfigClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllPodConfigClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllPodConfigClientUnauthorized creates a GetAllPodConfigClientUnauthorized with default headers values
func NewGetAllPodConfigClientUnauthorized() *GetAllPodConfigClientUnauthorized {
	return &GetAllPodConfigClientUnauthorized{}
}

/*GetAllPodConfigClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllPodConfigClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllPodConfigClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/pods][%d] getAllPodConfigClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllPodConfigClientUnauthorized) ToJSONString() string {
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

func (o *GetAllPodConfigClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllPodConfigClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllPodConfigClientInternalServerError creates a GetAllPodConfigClientInternalServerError with default headers values
func NewGetAllPodConfigClientInternalServerError() *GetAllPodConfigClientInternalServerError {
	return &GetAllPodConfigClientInternalServerError{}
}

/*GetAllPodConfigClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllPodConfigClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetAllPodConfigClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/configs/pods][%d] getAllPodConfigClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllPodConfigClientInternalServerError) ToJSONString() string {
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

func (o *GetAllPodConfigClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllPodConfigClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
