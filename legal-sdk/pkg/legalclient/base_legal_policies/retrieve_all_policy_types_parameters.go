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
	"github.com/go-openapi/swag"
)

// NewRetrieveAllPolicyTypesParams creates a new RetrieveAllPolicyTypesParams object
// with the default values initialized.
func NewRetrieveAllPolicyTypesParams() *RetrieveAllPolicyTypesParams {
	var ()
	return &RetrieveAllPolicyTypesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllPolicyTypesParamsWithTimeout creates a new RetrieveAllPolicyTypesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllPolicyTypesParamsWithTimeout(timeout time.Duration) *RetrieveAllPolicyTypesParams {
	var ()
	return &RetrieveAllPolicyTypesParams{

		timeout: timeout,
	}
}

// NewRetrieveAllPolicyTypesParamsWithContext creates a new RetrieveAllPolicyTypesParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllPolicyTypesParamsWithContext(ctx context.Context) *RetrieveAllPolicyTypesParams {
	var ()
	return &RetrieveAllPolicyTypesParams{

		Context: ctx,
	}
}

// NewRetrieveAllPolicyTypesParamsWithHTTPClient creates a new RetrieveAllPolicyTypesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllPolicyTypesParamsWithHTTPClient(client *http.Client) *RetrieveAllPolicyTypesParams {
	var ()
	return &RetrieveAllPolicyTypesParams{
		HTTPClient: client,
	}
}

/*RetrieveAllPolicyTypesParams contains all the parameters to send to the API endpoint
for the retrieve all policy types operation typically these are written to a http.Request
*/
type RetrieveAllPolicyTypesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Offset
	  Offset

	*/
	Offset *int32
	/*Limit
	  Limit

	*/
	Limit int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) WithTimeout(timeout time.Duration) *RetrieveAllPolicyTypesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) WithContext(ctx context.Context) *RetrieveAllPolicyTypesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) WithHTTPClient(client *http.Client) *RetrieveAllPolicyTypesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithOffset adds the offset to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) WithOffset(offset *int32) *RetrieveAllPolicyTypesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithLimit adds the limit to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) WithLimit(limit int32) *RetrieveAllPolicyTypesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the retrieve all policy types params
func (o *RetrieveAllPolicyTypesParams) SetLimit(limit int32) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllPolicyTypesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// query param limit
	qrLimit := o.Limit
	qLimit := swag.FormatInt32(qrLimit)
	if qLimit != "" {
		if err := r.SetQueryParam("limit", qLimit); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
