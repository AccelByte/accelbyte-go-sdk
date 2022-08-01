// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package third_party_credential

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// RetrieveActiveOIDCClientsPublicV3Reader is a Reader for the RetrieveActiveOIDCClientsPublicV3 structure.
type RetrieveActiveOIDCClientsPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveActiveOIDCClientsPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveActiveOIDCClientsPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveActiveOIDCClientsPublicV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveActiveOIDCClientsPublicV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveActiveOIDCClientsPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveActiveOIDCClientsPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveActiveOIDCClientsPublicV3OK creates a RetrieveActiveOIDCClientsPublicV3OK with default headers values
func NewRetrieveActiveOIDCClientsPublicV3OK() *RetrieveActiveOIDCClientsPublicV3OK {
	return &RetrieveActiveOIDCClientsPublicV3OK{}
}

/*RetrieveActiveOIDCClientsPublicV3OK handles this case with default header values.

  All Active OIDC Credential Retrieved
*/
type RetrieveActiveOIDCClientsPublicV3OK struct {
	Payload []*iamclientmodels.ModelPublicThirdPartyPlatformInfo
}

func (o *RetrieveActiveOIDCClientsPublicV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3OK  %+v", 200, o.Payload)
}

func (o *RetrieveActiveOIDCClientsPublicV3OK) GetPayload() []*iamclientmodels.ModelPublicThirdPartyPlatformInfo {
	return o.Payload
}

func (o *RetrieveActiveOIDCClientsPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveActiveOIDCClientsPublicV3Unauthorized creates a RetrieveActiveOIDCClientsPublicV3Unauthorized with default headers values
func NewRetrieveActiveOIDCClientsPublicV3Unauthorized() *RetrieveActiveOIDCClientsPublicV3Unauthorized {
	return &RetrieveActiveOIDCClientsPublicV3Unauthorized{}
}

/*RetrieveActiveOIDCClientsPublicV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type RetrieveActiveOIDCClientsPublicV3Unauthorized struct {
}

func (o *RetrieveActiveOIDCClientsPublicV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3Unauthorized ", 401)
}

func (o *RetrieveActiveOIDCClientsPublicV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewRetrieveActiveOIDCClientsPublicV3Forbidden creates a RetrieveActiveOIDCClientsPublicV3Forbidden with default headers values
func NewRetrieveActiveOIDCClientsPublicV3Forbidden() *RetrieveActiveOIDCClientsPublicV3Forbidden {
	return &RetrieveActiveOIDCClientsPublicV3Forbidden{}
}

/*RetrieveActiveOIDCClientsPublicV3Forbidden handles this case with default header values.

  Forbidden
*/
type RetrieveActiveOIDCClientsPublicV3Forbidden struct {
}

func (o *RetrieveActiveOIDCClientsPublicV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3Forbidden ", 403)
}

func (o *RetrieveActiveOIDCClientsPublicV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewRetrieveActiveOIDCClientsPublicV3NotFound creates a RetrieveActiveOIDCClientsPublicV3NotFound with default headers values
func NewRetrieveActiveOIDCClientsPublicV3NotFound() *RetrieveActiveOIDCClientsPublicV3NotFound {
	return &RetrieveActiveOIDCClientsPublicV3NotFound{}
}

/*RetrieveActiveOIDCClientsPublicV3NotFound handles this case with default header values.

  OIDC Credential Not Found
*/
type RetrieveActiveOIDCClientsPublicV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveActiveOIDCClientsPublicV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3NotFound  %+v", 404, o.Payload)
}

func (o *RetrieveActiveOIDCClientsPublicV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveActiveOIDCClientsPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveActiveOIDCClientsPublicV3InternalServerError creates a RetrieveActiveOIDCClientsPublicV3InternalServerError with default headers values
func NewRetrieveActiveOIDCClientsPublicV3InternalServerError() *RetrieveActiveOIDCClientsPublicV3InternalServerError {
	return &RetrieveActiveOIDCClientsPublicV3InternalServerError{}
}

/*RetrieveActiveOIDCClientsPublicV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type RetrieveActiveOIDCClientsPublicV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveActiveOIDCClientsPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3InternalServerError  %+v", 500, o.Payload)
}

func (o *RetrieveActiveOIDCClientsPublicV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveActiveOIDCClientsPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}