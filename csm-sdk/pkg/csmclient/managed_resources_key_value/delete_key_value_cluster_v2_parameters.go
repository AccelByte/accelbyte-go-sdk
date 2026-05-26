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
)

// NewDeleteKeyValueClusterV2Params creates a new DeleteKeyValueClusterV2Params object
// with the default values initialized.
func NewDeleteKeyValueClusterV2Params() *DeleteKeyValueClusterV2Params {
	var ()
	return &DeleteKeyValueClusterV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteKeyValueClusterV2ParamsWithTimeout creates a new DeleteKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteKeyValueClusterV2ParamsWithTimeout(timeout time.Duration) *DeleteKeyValueClusterV2Params {
	var ()
	return &DeleteKeyValueClusterV2Params{

		timeout: timeout,
	}
}

// NewDeleteKeyValueClusterV2ParamsWithContext creates a new DeleteKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteKeyValueClusterV2ParamsWithContext(ctx context.Context) *DeleteKeyValueClusterV2Params {
	var ()
	return &DeleteKeyValueClusterV2Params{

		Context: ctx,
	}
}

// NewDeleteKeyValueClusterV2ParamsWithHTTPClient creates a new DeleteKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteKeyValueClusterV2ParamsWithHTTPClient(client *http.Client) *DeleteKeyValueClusterV2Params {
	var ()
	return &DeleteKeyValueClusterV2Params{
		HTTPClient: client,
	}
}

/*DeleteKeyValueClusterV2Params contains all the parameters to send to the API endpoint
for the delete key value cluster v2 operation typically these are written to a http.Request
*/
type DeleteKeyValueClusterV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) WithTimeout(timeout time.Duration) *DeleteKeyValueClusterV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) WithContext(ctx context.Context) *DeleteKeyValueClusterV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) WithHTTPClient(client *http.Client) *DeleteKeyValueClusterV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteKeyValueClusterV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) WithNamespace(namespace string) *DeleteKeyValueClusterV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResourceID adds the resourceID to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) WithResourceID(resourceID string) *DeleteKeyValueClusterV2Params {
	o.SetResourceID(resourceID)
	return o
}

// SetResourceID adds the resourceId to the delete key value cluster v2 params
func (o *DeleteKeyValueClusterV2Params) SetResourceID(resourceID string) {
	o.ResourceID = resourceID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteKeyValueClusterV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
