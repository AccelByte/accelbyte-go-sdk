// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package agreement

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// RetrieveAllUsersByPolicyVersionReader is a Reader for the RetrieveAllUsersByPolicyVersion structure.
type RetrieveAllUsersByPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllUsersByPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllUsersByPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveAllUsersByPolicyVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/agreements/policy-versions/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllUsersByPolicyVersionOK creates a RetrieveAllUsersByPolicyVersionOK with default headers values
func NewRetrieveAllUsersByPolicyVersionOK() *RetrieveAllUsersByPolicyVersionOK {
	return &RetrieveAllUsersByPolicyVersionOK{}
}

/*RetrieveAllUsersByPolicyVersionOK handles this case with default header values.

  successful operation
*/
type RetrieveAllUsersByPolicyVersionOK struct {
	Payload []*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse
}

func (o *RetrieveAllUsersByPolicyVersionOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/agreements/policy-versions/users][%d] retrieveAllUsersByPolicyVersionOK  %+v", 200, o.Payload)
}

func (o *RetrieveAllUsersByPolicyVersionOK) GetPayload() []*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse {
	return o.Payload
}

func (o *RetrieveAllUsersByPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveAllUsersByPolicyVersionNotFound creates a RetrieveAllUsersByPolicyVersionNotFound with default headers values
func NewRetrieveAllUsersByPolicyVersionNotFound() *RetrieveAllUsersByPolicyVersionNotFound {
	return &RetrieveAllUsersByPolicyVersionNotFound{}
}

/*RetrieveAllUsersByPolicyVersionNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.policy_version_not_found</td></tr></table>
*/
type RetrieveAllUsersByPolicyVersionNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveAllUsersByPolicyVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/agreements/policy-versions/users][%d] retrieveAllUsersByPolicyVersionNotFound  %+v", 404, o.Payload)
}

func (o *RetrieveAllUsersByPolicyVersionNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveAllUsersByPolicyVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
