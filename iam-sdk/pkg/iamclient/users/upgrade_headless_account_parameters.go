// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUpgradeHeadlessAccountParams creates a new UpgradeHeadlessAccountParams object
// with the default values initialized.
func NewUpgradeHeadlessAccountParams() *UpgradeHeadlessAccountParams {
	var ()
	return &UpgradeHeadlessAccountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpgradeHeadlessAccountParamsWithTimeout creates a new UpgradeHeadlessAccountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpgradeHeadlessAccountParamsWithTimeout(timeout time.Duration) *UpgradeHeadlessAccountParams {
	var ()
	return &UpgradeHeadlessAccountParams{

		timeout: timeout,
	}
}

// NewUpgradeHeadlessAccountParamsWithContext creates a new UpgradeHeadlessAccountParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpgradeHeadlessAccountParamsWithContext(ctx context.Context) *UpgradeHeadlessAccountParams {
	var ()
	return &UpgradeHeadlessAccountParams{

		Context: ctx,
	}
}

// NewUpgradeHeadlessAccountParamsWithHTTPClient creates a new UpgradeHeadlessAccountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpgradeHeadlessAccountParamsWithHTTPClient(client *http.Client) *UpgradeHeadlessAccountParams {
	var ()
	return &UpgradeHeadlessAccountParams{
		HTTPClient: client,
	}
}

/*UpgradeHeadlessAccountParams contains all the parameters to send to the API endpoint
for the upgrade headless account operation typically these are written to a http.Request
*/
type UpgradeHeadlessAccountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUpgradeHeadlessAccountRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) WithTimeout(timeout time.Duration) *UpgradeHeadlessAccountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) WithContext(ctx context.Context) *UpgradeHeadlessAccountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) WithHTTPClient(client *http.Client) *UpgradeHeadlessAccountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpgradeHeadlessAccountParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) WithBody(body *iamclientmodels.ModelUpgradeHeadlessAccountRequest) *UpgradeHeadlessAccountParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetBody(body *iamclientmodels.ModelUpgradeHeadlessAccountRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) WithNamespace(namespace string) *UpgradeHeadlessAccountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) WithUserID(userID string) *UpgradeHeadlessAccountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the upgrade headless account params
func (o *UpgradeHeadlessAccountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpgradeHeadlessAccountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
