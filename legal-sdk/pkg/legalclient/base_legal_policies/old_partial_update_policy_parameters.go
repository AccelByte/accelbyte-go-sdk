// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewOldPartialUpdatePolicyParams creates a new OldPartialUpdatePolicyParams object
// with the default values initialized.
func NewOldPartialUpdatePolicyParams() *OldPartialUpdatePolicyParams {
	var ()
	return &OldPartialUpdatePolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldPartialUpdatePolicyParamsWithTimeout creates a new OldPartialUpdatePolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldPartialUpdatePolicyParamsWithTimeout(timeout time.Duration) *OldPartialUpdatePolicyParams {
	var ()
	return &OldPartialUpdatePolicyParams{

		timeout: timeout,
	}
}

// NewOldPartialUpdatePolicyParamsWithContext creates a new OldPartialUpdatePolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldPartialUpdatePolicyParamsWithContext(ctx context.Context) *OldPartialUpdatePolicyParams {
	var ()
	return &OldPartialUpdatePolicyParams{

		Context: ctx,
	}
}

// NewOldPartialUpdatePolicyParamsWithHTTPClient creates a new OldPartialUpdatePolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldPartialUpdatePolicyParamsWithHTTPClient(client *http.Client) *OldPartialUpdatePolicyParams {
	var ()
	return &OldPartialUpdatePolicyParams{
		HTTPClient: client,
	}
}

/*OldPartialUpdatePolicyParams contains all the parameters to send to the API endpoint
for the old partial update policy operation typically these are written to a http.Request
*/
type OldPartialUpdatePolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdateBasePolicyRequest
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) WithTimeout(timeout time.Duration) *OldPartialUpdatePolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) WithContext(ctx context.Context) *OldPartialUpdatePolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) WithHTTPClient(client *http.Client) *OldPartialUpdatePolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldPartialUpdatePolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) WithBody(body *legalclientmodels.UpdateBasePolicyRequest) *OldPartialUpdatePolicyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) SetBody(body *legalclientmodels.UpdateBasePolicyRequest) {
	o.Body = body
}

// WithBasePolicyID adds the basePolicyID to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) WithBasePolicyID(basePolicyID string) *OldPartialUpdatePolicyParams {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the old partial update policy params
func (o *OldPartialUpdatePolicyParams) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WriteToRequest writes these params to a swagger request
func (o *OldPartialUpdatePolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param basePolicyId
	if err := r.SetPathParam("basePolicyId", o.BasePolicyID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
