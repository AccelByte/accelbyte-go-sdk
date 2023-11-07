// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package a_m_s_info

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// InfoRegionsReader is a Reader for the InfoRegions structure.
type InfoRegionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *InfoRegionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewInfoRegionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewInfoRegionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewInfoRegionsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewInfoRegionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/regions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewInfoRegionsOK creates a InfoRegionsOK with default headers values
func NewInfoRegionsOK() *InfoRegionsOK {
	return &InfoRegionsOK{}
}

/*InfoRegionsOK handles this case with default header values.

  success
*/
type InfoRegionsOK struct {
	Payload *amsclientmodels.APIAMSRegionsResponse
}

func (o *InfoRegionsOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/regions][%d] infoRegionsOK  %+v", 200, o.ToJSONString())
}

func (o *InfoRegionsOK) ToJSONString() string {
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

func (o *InfoRegionsOK) GetPayload() *amsclientmodels.APIAMSRegionsResponse {
	return o.Payload
}

func (o *InfoRegionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIAMSRegionsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInfoRegionsUnauthorized creates a InfoRegionsUnauthorized with default headers values
func NewInfoRegionsUnauthorized() *InfoRegionsUnauthorized {
	return &InfoRegionsUnauthorized{}
}

/*InfoRegionsUnauthorized handles this case with default header values.

  no authorization provided
*/
type InfoRegionsUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *InfoRegionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/regions][%d] infoRegionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *InfoRegionsUnauthorized) ToJSONString() string {
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

func (o *InfoRegionsUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InfoRegionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInfoRegionsForbidden creates a InfoRegionsForbidden with default headers values
func NewInfoRegionsForbidden() *InfoRegionsForbidden {
	return &InfoRegionsForbidden{}
}

/*InfoRegionsForbidden handles this case with default header values.

  insufficient permissions
*/
type InfoRegionsForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *InfoRegionsForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/regions][%d] infoRegionsForbidden  %+v", 403, o.ToJSONString())
}

func (o *InfoRegionsForbidden) ToJSONString() string {
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

func (o *InfoRegionsForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InfoRegionsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInfoRegionsInternalServerError creates a InfoRegionsInternalServerError with default headers values
func NewInfoRegionsInternalServerError() *InfoRegionsInternalServerError {
	return &InfoRegionsInternalServerError{}
}

/*InfoRegionsInternalServerError handles this case with default header values.

  internal server error
*/
type InfoRegionsInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *InfoRegionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/regions][%d] infoRegionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *InfoRegionsInternalServerError) ToJSONString() string {
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

func (o *InfoRegionsInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InfoRegionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
