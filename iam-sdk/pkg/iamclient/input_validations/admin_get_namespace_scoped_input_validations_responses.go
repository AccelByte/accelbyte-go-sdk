// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package input_validations

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

// AdminGetNamespaceScopedInputValidationsReader is a Reader for the AdminGetNamespaceScopedInputValidations structure.
type AdminGetNamespaceScopedInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetNamespaceScopedInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetNamespaceScopedInputValidationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetNamespaceScopedInputValidationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetNamespaceScopedInputValidationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/inputValidations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetNamespaceScopedInputValidationsOK creates a AdminGetNamespaceScopedInputValidationsOK with default headers values
func NewAdminGetNamespaceScopedInputValidationsOK() *AdminGetNamespaceScopedInputValidationsOK {
	return &AdminGetNamespaceScopedInputValidationsOK{}
}

/*AdminGetNamespaceScopedInputValidationsOK handles this case with default header values.

  OK
*/
type AdminGetNamespaceScopedInputValidationsOK struct {
	Payload *iamclientmodels.ModelInputValidationsResponse
}

func (o *AdminGetNamespaceScopedInputValidationsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/inputValidations][%d] adminGetNamespaceScopedInputValidationsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetNamespaceScopedInputValidationsOK) ToJSONString() string {
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

func (o *AdminGetNamespaceScopedInputValidationsOK) GetPayload() *iamclientmodels.ModelInputValidationsResponse {
	return o.Payload
}

func (o *AdminGetNamespaceScopedInputValidationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInputValidationsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetNamespaceScopedInputValidationsUnauthorized creates a AdminGetNamespaceScopedInputValidationsUnauthorized with default headers values
func NewAdminGetNamespaceScopedInputValidationsUnauthorized() *AdminGetNamespaceScopedInputValidationsUnauthorized {
	return &AdminGetNamespaceScopedInputValidationsUnauthorized{}
}

/*AdminGetNamespaceScopedInputValidationsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetNamespaceScopedInputValidationsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceScopedInputValidationsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/inputValidations][%d] adminGetNamespaceScopedInputValidationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetNamespaceScopedInputValidationsUnauthorized) ToJSONString() string {
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

func (o *AdminGetNamespaceScopedInputValidationsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceScopedInputValidationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetNamespaceScopedInputValidationsForbidden creates a AdminGetNamespaceScopedInputValidationsForbidden with default headers values
func NewAdminGetNamespaceScopedInputValidationsForbidden() *AdminGetNamespaceScopedInputValidationsForbidden {
	return &AdminGetNamespaceScopedInputValidationsForbidden{}
}

/*AdminGetNamespaceScopedInputValidationsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetNamespaceScopedInputValidationsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceScopedInputValidationsForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/inputValidations][%d] adminGetNamespaceScopedInputValidationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetNamespaceScopedInputValidationsForbidden) ToJSONString() string {
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

func (o *AdminGetNamespaceScopedInputValidationsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceScopedInputValidationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
