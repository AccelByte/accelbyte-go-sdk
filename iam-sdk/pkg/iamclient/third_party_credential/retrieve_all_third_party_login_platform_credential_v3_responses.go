// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

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

// RetrieveAllThirdPartyLoginPlatformCredentialV3Reader is a Reader for the RetrieveAllThirdPartyLoginPlatformCredentialV3 structure.
type RetrieveAllThirdPartyLoginPlatformCredentialV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllThirdPartyLoginPlatformCredentialV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveAllThirdPartyLoginPlatformCredentialV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3OK creates a RetrieveAllThirdPartyLoginPlatformCredentialV3OK with default headers values
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3OK() *RetrieveAllThirdPartyLoginPlatformCredentialV3OK {
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3OK{}
}

/*RetrieveAllThirdPartyLoginPlatformCredentialV3OK handles this case with default header values.

  All Active Third Party Credential Retrieved
*/
type RetrieveAllThirdPartyLoginPlatformCredentialV3OK struct {
	Payload []*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients][%d] retrieveAllThirdPartyLoginPlatformCredentialV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3OK) ToJSONString() string {
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

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3OK) GetPayload() []*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse {
	return o.Payload
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized creates a RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized with default headers values
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized() *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized {
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized{}
}

/*RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients][%d] retrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized) ToJSONString() string {
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

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden creates a RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden with default headers values
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden() *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden {
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden{}
}

/*RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients][%d] retrieveAllThirdPartyLoginPlatformCredentialV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden) ToJSONString() string {
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

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3NotFound creates a RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound with default headers values
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3NotFound() *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound {
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound{}
}

/*RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients][%d] retrieveAllThirdPartyLoginPlatformCredentialV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound) ToJSONString() string {
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

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError creates a RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError with default headers values
func NewRetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError() *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError {
	return &RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError{}
}

/*RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients][%d] retrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError) ToJSONString() string {
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

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
