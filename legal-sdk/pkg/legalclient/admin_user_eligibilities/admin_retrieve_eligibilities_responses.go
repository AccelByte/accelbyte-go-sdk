// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_user_eligibilities

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// AdminRetrieveEligibilitiesReader is a Reader for the AdminRetrieveEligibilities structure.
type AdminRetrieveEligibilitiesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRetrieveEligibilitiesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminRetrieveEligibilitiesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRetrieveEligibilitiesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRetrieveEligibilitiesOK creates a AdminRetrieveEligibilitiesOK with default headers values
func NewAdminRetrieveEligibilitiesOK() *AdminRetrieveEligibilitiesOK {
	return &AdminRetrieveEligibilitiesOK{}
}

/*AdminRetrieveEligibilitiesOK handles this case with default header values.

  successful operation
*/
type AdminRetrieveEligibilitiesOK struct {
	Payload *legalclientmodels.RetrieveUserEligibilitiesIndirectResponse
}

func (o *AdminRetrieveEligibilitiesOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities][%d] adminRetrieveEligibilitiesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminRetrieveEligibilitiesOK) ToJSONString() string {
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

func (o *AdminRetrieveEligibilitiesOK) GetPayload() *legalclientmodels.RetrieveUserEligibilitiesIndirectResponse {
	return o.Payload
}

func (o *AdminRetrieveEligibilitiesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrieveUserEligibilitiesIndirectResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRetrieveEligibilitiesBadRequest creates a AdminRetrieveEligibilitiesBadRequest with default headers values
func NewAdminRetrieveEligibilitiesBadRequest() *AdminRetrieveEligibilitiesBadRequest {
	return &AdminRetrieveEligibilitiesBadRequest{}
}

/*AdminRetrieveEligibilitiesBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr></table>
*/
type AdminRetrieveEligibilitiesBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *AdminRetrieveEligibilitiesBadRequest) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities][%d] adminRetrieveEligibilitiesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRetrieveEligibilitiesBadRequest) ToJSONString() string {
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

func (o *AdminRetrieveEligibilitiesBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminRetrieveEligibilitiesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
