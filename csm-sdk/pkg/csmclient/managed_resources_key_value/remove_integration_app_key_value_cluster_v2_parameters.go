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

// NewRemoveIntegrationAppKeyValueClusterV2Params creates a new RemoveIntegrationAppKeyValueClusterV2Params object
// with the default values initialized.
func NewRemoveIntegrationAppKeyValueClusterV2Params() *RemoveIntegrationAppKeyValueClusterV2Params {
	var ()
	return &RemoveIntegrationAppKeyValueClusterV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRemoveIntegrationAppKeyValueClusterV2ParamsWithTimeout creates a new RemoveIntegrationAppKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRemoveIntegrationAppKeyValueClusterV2ParamsWithTimeout(timeout time.Duration) *RemoveIntegrationAppKeyValueClusterV2Params {
	var ()
	return &RemoveIntegrationAppKeyValueClusterV2Params{

		timeout: timeout,
	}
}

// NewRemoveIntegrationAppKeyValueClusterV2ParamsWithContext creates a new RemoveIntegrationAppKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewRemoveIntegrationAppKeyValueClusterV2ParamsWithContext(ctx context.Context) *RemoveIntegrationAppKeyValueClusterV2Params {
	var ()
	return &RemoveIntegrationAppKeyValueClusterV2Params{

		Context: ctx,
	}
}

// NewRemoveIntegrationAppKeyValueClusterV2ParamsWithHTTPClient creates a new RemoveIntegrationAppKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRemoveIntegrationAppKeyValueClusterV2ParamsWithHTTPClient(client *http.Client) *RemoveIntegrationAppKeyValueClusterV2Params {
	var ()
	return &RemoveIntegrationAppKeyValueClusterV2Params{
		HTTPClient: client,
	}
}

/*RemoveIntegrationAppKeyValueClusterV2Params contains all the parameters to send to the API endpoint
for the remove integration app key value cluster v2 operation typically these are written to a http.Request
*/
type RemoveIntegrationAppKeyValueClusterV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) WithTimeout(timeout time.Duration) *RemoveIntegrationAppKeyValueClusterV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) WithContext(ctx context.Context) *RemoveIntegrationAppKeyValueClusterV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) WithHTTPClient(client *http.Client) *RemoveIntegrationAppKeyValueClusterV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) WithApp(app string) *RemoveIntegrationAppKeyValueClusterV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) WithNamespace(namespace string) *RemoveIntegrationAppKeyValueClusterV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the remove integration app key value cluster v2 params
func (o *RemoveIntegrationAppKeyValueClusterV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RemoveIntegrationAppKeyValueClusterV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

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
