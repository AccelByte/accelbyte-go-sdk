// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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

// NewEnableEntitlementOriginFeatureParams creates a new EnableEntitlementOriginFeatureParams object
// with the default values initialized.
func NewEnableEntitlementOriginFeatureParams() *EnableEntitlementOriginFeatureParams {
	var ()
	return &EnableEntitlementOriginFeatureParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEnableEntitlementOriginFeatureParamsWithTimeout creates a new EnableEntitlementOriginFeatureParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEnableEntitlementOriginFeatureParamsWithTimeout(timeout time.Duration) *EnableEntitlementOriginFeatureParams {
	var ()
	return &EnableEntitlementOriginFeatureParams{

		timeout: timeout,
	}
}

// NewEnableEntitlementOriginFeatureParamsWithContext creates a new EnableEntitlementOriginFeatureParams object
// with the default values initialized, and the ability to set a context for a request
func NewEnableEntitlementOriginFeatureParamsWithContext(ctx context.Context) *EnableEntitlementOriginFeatureParams {
	var ()
	return &EnableEntitlementOriginFeatureParams{

		Context: ctx,
	}
}

// NewEnableEntitlementOriginFeatureParamsWithHTTPClient creates a new EnableEntitlementOriginFeatureParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEnableEntitlementOriginFeatureParamsWithHTTPClient(client *http.Client) *EnableEntitlementOriginFeatureParams {
	var ()
	return &EnableEntitlementOriginFeatureParams{
		HTTPClient: client,
	}
}

/*EnableEntitlementOriginFeatureParams contains all the parameters to send to the API endpoint
for the enable entitlement origin feature operation typically these are written to a http.Request
*/
type EnableEntitlementOriginFeatureParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) WithTimeout(timeout time.Duration) *EnableEntitlementOriginFeatureParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) WithContext(ctx context.Context) *EnableEntitlementOriginFeatureParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) WithHTTPClient(client *http.Client) *EnableEntitlementOriginFeatureParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) WithNamespace(namespace string) *EnableEntitlementOriginFeatureParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the enable entitlement origin feature params
func (o *EnableEntitlementOriginFeatureParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *EnableEntitlementOriginFeatureParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
