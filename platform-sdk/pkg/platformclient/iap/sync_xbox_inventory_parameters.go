// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewSyncXboxInventoryParams creates a new SyncXboxInventoryParams object
// with the default values initialized.
func NewSyncXboxInventoryParams() *SyncXboxInventoryParams {
	var ()
	return &SyncXboxInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncXboxInventoryParamsWithTimeout creates a new SyncXboxInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncXboxInventoryParamsWithTimeout(timeout time.Duration) *SyncXboxInventoryParams {
	var ()
	return &SyncXboxInventoryParams{

		timeout: timeout,
	}
}

// NewSyncXboxInventoryParamsWithContext creates a new SyncXboxInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncXboxInventoryParamsWithContext(ctx context.Context) *SyncXboxInventoryParams {
	var ()
	return &SyncXboxInventoryParams{

		Context: ctx,
	}
}

// NewSyncXboxInventoryParamsWithHTTPClient creates a new SyncXboxInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncXboxInventoryParamsWithHTTPClient(client *http.Client) *SyncXboxInventoryParams {
	var ()
	return &SyncXboxInventoryParams{
		HTTPClient: client,
	}
}

/*SyncXboxInventoryParams contains all the parameters to send to the API endpoint
for the sync xbox inventory operation typically these are written to a http.Request
*/
type SyncXboxInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.XblReconcileRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the sync xbox inventory params
func (o *SyncXboxInventoryParams) WithTimeout(timeout time.Duration) *SyncXboxInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync xbox inventory params
func (o *SyncXboxInventoryParams) WithContext(ctx context.Context) *SyncXboxInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync xbox inventory params
func (o *SyncXboxInventoryParams) WithHTTPClient(client *http.Client) *SyncXboxInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the sync xbox inventory params
func (o *SyncXboxInventoryParams) WithBody(body *platformclientmodels.XblReconcileRequest) *SyncXboxInventoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetBody(body *platformclientmodels.XblReconcileRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync xbox inventory params
func (o *SyncXboxInventoryParams) WithNamespace(namespace string) *SyncXboxInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync xbox inventory params
func (o *SyncXboxInventoryParams) WithUserID(userID string) *SyncXboxInventoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync xbox inventory params
func (o *SyncXboxInventoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncXboxInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
