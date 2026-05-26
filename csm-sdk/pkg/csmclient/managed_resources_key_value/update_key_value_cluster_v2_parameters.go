// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_key_value

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewUpdateKeyValueClusterV2Params creates a new UpdateKeyValueClusterV2Params object
// with the default values initialized.
func NewUpdateKeyValueClusterV2Params() *UpdateKeyValueClusterV2Params {
	var ()
	return &UpdateKeyValueClusterV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateKeyValueClusterV2ParamsWithTimeout creates a new UpdateKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateKeyValueClusterV2ParamsWithTimeout(timeout time.Duration) *UpdateKeyValueClusterV2Params {
	var ()
	return &UpdateKeyValueClusterV2Params{

		timeout: timeout,
	}
}

// NewUpdateKeyValueClusterV2ParamsWithContext creates a new UpdateKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateKeyValueClusterV2ParamsWithContext(ctx context.Context) *UpdateKeyValueClusterV2Params {
	var ()
	return &UpdateKeyValueClusterV2Params{

		Context: ctx,
	}
}

// NewUpdateKeyValueClusterV2ParamsWithHTTPClient creates a new UpdateKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateKeyValueClusterV2ParamsWithHTTPClient(client *http.Client) *UpdateKeyValueClusterV2Params {
	var ()
	return &UpdateKeyValueClusterV2Params{
		HTTPClient: client,
	}
}

/*UpdateKeyValueClusterV2Params contains all the parameters to send to the API endpoint
for the update key value cluster v2 operation typically these are written to a http.Request
*/
type UpdateKeyValueClusterV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.DomainKeyValueUpdateConfiguration
	/*Namespace
	  Studio Name

	*/
	Namespace string
	/*ResourceID
	  Resource ID

	*/
	ResourceID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) WithTimeout(timeout time.Duration) *UpdateKeyValueClusterV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) WithContext(ctx context.Context) *UpdateKeyValueClusterV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) WithHTTPClient(client *http.Client) *UpdateKeyValueClusterV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateKeyValueClusterV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) WithBody(body *csmclientmodels.DomainKeyValueUpdateConfiguration) *UpdateKeyValueClusterV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetBody(body *csmclientmodels.DomainKeyValueUpdateConfiguration) {
	o.Body = body
}

// WithNamespace adds the namespace to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) WithNamespace(namespace string) *UpdateKeyValueClusterV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResourceID adds the resourceID to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) WithResourceID(resourceID string) *UpdateKeyValueClusterV2Params {
	o.SetResourceID(resourceID)
	return o
}

// SetResourceID adds the resourceId to the update key value cluster v2 params
func (o *UpdateKeyValueClusterV2Params) SetResourceID(resourceID string) {
	o.ResourceID = resourceID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateKeyValueClusterV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param resourceId
	if err := r.SetPathParam("resourceId", o.ResourceID); err != nil {
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
