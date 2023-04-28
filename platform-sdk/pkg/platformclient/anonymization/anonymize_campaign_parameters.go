// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAnonymizeCampaignParams creates a new AnonymizeCampaignParams object
// with the default values initialized.
func NewAnonymizeCampaignParams() *AnonymizeCampaignParams {
	var ()
	return &AnonymizeCampaignParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeCampaignParamsWithTimeout creates a new AnonymizeCampaignParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeCampaignParamsWithTimeout(timeout time.Duration) *AnonymizeCampaignParams {
	var ()
	return &AnonymizeCampaignParams{

		timeout: timeout,
	}
}

// NewAnonymizeCampaignParamsWithContext creates a new AnonymizeCampaignParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeCampaignParamsWithContext(ctx context.Context) *AnonymizeCampaignParams {
	var ()
	return &AnonymizeCampaignParams{

		Context: ctx,
	}
}

// NewAnonymizeCampaignParamsWithHTTPClient creates a new AnonymizeCampaignParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeCampaignParamsWithHTTPClient(client *http.Client) *AnonymizeCampaignParams {
	var ()
	return &AnonymizeCampaignParams{
		HTTPClient: client,
	}
}

/*AnonymizeCampaignParams contains all the parameters to send to the API endpoint
for the anonymize campaign operation typically these are written to a http.Request
*/
type AnonymizeCampaignParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the anonymize campaign params
func (o *AnonymizeCampaignParams) WithTimeout(timeout time.Duration) *AnonymizeCampaignParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize campaign params
func (o *AnonymizeCampaignParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize campaign params
func (o *AnonymizeCampaignParams) WithContext(ctx context.Context) *AnonymizeCampaignParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize campaign params
func (o *AnonymizeCampaignParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize campaign params
func (o *AnonymizeCampaignParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize campaign params
func (o *AnonymizeCampaignParams) WithHTTPClient(client *http.Client) *AnonymizeCampaignParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize campaign params
func (o *AnonymizeCampaignParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize campaign params
func (o *AnonymizeCampaignParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the anonymize campaign params
func (o *AnonymizeCampaignParams) WithNamespace(namespace string) *AnonymizeCampaignParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize campaign params
func (o *AnonymizeCampaignParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize campaign params
func (o *AnonymizeCampaignParams) WithUserID(userID string) *AnonymizeCampaignParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize campaign params
func (o *AnonymizeCampaignParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeCampaignParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
