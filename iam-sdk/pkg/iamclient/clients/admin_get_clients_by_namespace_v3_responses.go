// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminGetClientsByNamespaceV3Reader is a Reader for the AdminGetClientsByNamespaceV3 structure.
type AdminGetClientsByNamespaceV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetClientsByNamespaceV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetClientsByNamespaceV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetClientsByNamespaceV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetClientsByNamespaceV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetClientsByNamespaceV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetClientsByNamespaceV3OK creates a AdminGetClientsByNamespaceV3OK with default headers values
func NewAdminGetClientsByNamespaceV3OK() *AdminGetClientsByNamespaceV3OK {
	return &AdminGetClientsByNamespaceV3OK{}
}

/*AdminGetClientsByNamespaceV3OK handles this case with default header values.

  OK
*/
type AdminGetClientsByNamespaceV3OK struct {
	Payload *iamclientmodels.ClientmodelClientsV3Response
}

func (o *AdminGetClientsByNamespaceV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients][%d] adminGetClientsByNamespaceV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetClientsByNamespaceV3OK) ToJSONString() string {
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

func (o *AdminGetClientsByNamespaceV3OK) GetPayload() *iamclientmodels.ClientmodelClientsV3Response {
	return o.Payload
}

func (o *AdminGetClientsByNamespaceV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelClientsV3Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetClientsByNamespaceV3BadRequest creates a AdminGetClientsByNamespaceV3BadRequest with default headers values
func NewAdminGetClientsByNamespaceV3BadRequest() *AdminGetClientsByNamespaceV3BadRequest {
	return &AdminGetClientsByNamespaceV3BadRequest{}
}

/*AdminGetClientsByNamespaceV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetClientsByNamespaceV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetClientsByNamespaceV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients][%d] adminGetClientsByNamespaceV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetClientsByNamespaceV3BadRequest) ToJSONString() string {
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

func (o *AdminGetClientsByNamespaceV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetClientsByNamespaceV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetClientsByNamespaceV3Unauthorized creates a AdminGetClientsByNamespaceV3Unauthorized with default headers values
func NewAdminGetClientsByNamespaceV3Unauthorized() *AdminGetClientsByNamespaceV3Unauthorized {
	return &AdminGetClientsByNamespaceV3Unauthorized{}
}

/*AdminGetClientsByNamespaceV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetClientsByNamespaceV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetClientsByNamespaceV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients][%d] adminGetClientsByNamespaceV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetClientsByNamespaceV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetClientsByNamespaceV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetClientsByNamespaceV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetClientsByNamespaceV3Forbidden creates a AdminGetClientsByNamespaceV3Forbidden with default headers values
func NewAdminGetClientsByNamespaceV3Forbidden() *AdminGetClientsByNamespaceV3Forbidden {
	return &AdminGetClientsByNamespaceV3Forbidden{}
}

/*AdminGetClientsByNamespaceV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetClientsByNamespaceV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetClientsByNamespaceV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients][%d] adminGetClientsByNamespaceV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetClientsByNamespaceV3Forbidden) ToJSONString() string {
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

func (o *AdminGetClientsByNamespaceV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetClientsByNamespaceV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
