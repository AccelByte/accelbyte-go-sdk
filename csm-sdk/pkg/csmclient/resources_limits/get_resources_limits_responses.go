// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package resources_limits

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

// GetResourcesLimitsReader is a Reader for the GetResourcesLimits structure.
type GetResourcesLimitsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetResourcesLimitsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetResourcesLimitsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetResourcesLimitsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 402:
		result := NewGetResourcesLimitsPaymentRequired()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetResourcesLimitsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetResourcesLimitsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/resources/limits returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetResourcesLimitsOK creates a GetResourcesLimitsOK with default headers values
func NewGetResourcesLimitsOK() *GetResourcesLimitsOK {
	return &GetResourcesLimitsOK{}
}

/*GetResourcesLimitsOK handles this case with default header values.


 */
type GetResourcesLimitsOK struct {
	Payload *csmclientmodels.ApimodelCSMAppLimitsResponse
}

func (o *GetResourcesLimitsOK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/resources/limits][%d] getResourcesLimitsOK  %+v", 200, o.ToJSONString())
}

func (o *GetResourcesLimitsOK) ToJSONString() string {
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

func (o *GetResourcesLimitsOK) GetPayload() *csmclientmodels.ApimodelCSMAppLimitsResponse {
	return o.Payload
}

func (o *GetResourcesLimitsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelCSMAppLimitsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetResourcesLimitsUnauthorized creates a GetResourcesLimitsUnauthorized with default headers values
func NewGetResourcesLimitsUnauthorized() *GetResourcesLimitsUnauthorized {
	return &GetResourcesLimitsUnauthorized{}
}

/*GetResourcesLimitsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetResourcesLimitsUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetResourcesLimitsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/resources/limits][%d] getResourcesLimitsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetResourcesLimitsUnauthorized) ToJSONString() string {
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

func (o *GetResourcesLimitsUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetResourcesLimitsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetResourcesLimitsPaymentRequired creates a GetResourcesLimitsPaymentRequired with default headers values
func NewGetResourcesLimitsPaymentRequired() *GetResourcesLimitsPaymentRequired {
	return &GetResourcesLimitsPaymentRequired{}
}

/*GetResourcesLimitsPaymentRequired handles this case with default header values.

  Payment Required
*/
type GetResourcesLimitsPaymentRequired struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetResourcesLimitsPaymentRequired) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/resources/limits][%d] getResourcesLimitsPaymentRequired  %+v", 402, o.ToJSONString())
}

func (o *GetResourcesLimitsPaymentRequired) ToJSONString() string {
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

func (o *GetResourcesLimitsPaymentRequired) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetResourcesLimitsPaymentRequired) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetResourcesLimitsForbidden creates a GetResourcesLimitsForbidden with default headers values
func NewGetResourcesLimitsForbidden() *GetResourcesLimitsForbidden {
	return &GetResourcesLimitsForbidden{}
}

/*GetResourcesLimitsForbidden handles this case with default header values.

  Forbidden
*/
type GetResourcesLimitsForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetResourcesLimitsForbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/resources/limits][%d] getResourcesLimitsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetResourcesLimitsForbidden) ToJSONString() string {
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

func (o *GetResourcesLimitsForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetResourcesLimitsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetResourcesLimitsInternalServerError creates a GetResourcesLimitsInternalServerError with default headers values
func NewGetResourcesLimitsInternalServerError() *GetResourcesLimitsInternalServerError {
	return &GetResourcesLimitsInternalServerError{}
}

/*GetResourcesLimitsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetResourcesLimitsInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetResourcesLimitsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/resources/limits][%d] getResourcesLimitsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetResourcesLimitsInternalServerError) ToJSONString() string {
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

func (o *GetResourcesLimitsInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetResourcesLimitsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
