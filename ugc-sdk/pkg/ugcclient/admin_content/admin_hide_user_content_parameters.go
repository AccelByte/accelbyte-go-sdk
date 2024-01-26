// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminHideUserContentParams creates a new AdminHideUserContentParams object
// with the default values initialized.
func NewAdminHideUserContentParams() *AdminHideUserContentParams {
	var ()
	return &AdminHideUserContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminHideUserContentParamsWithTimeout creates a new AdminHideUserContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminHideUserContentParamsWithTimeout(timeout time.Duration) *AdminHideUserContentParams {
	var ()
	return &AdminHideUserContentParams{

		timeout: timeout,
	}
}

// NewAdminHideUserContentParamsWithContext creates a new AdminHideUserContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminHideUserContentParamsWithContext(ctx context.Context) *AdminHideUserContentParams {
	var ()
	return &AdminHideUserContentParams{

		Context: ctx,
	}
}

// NewAdminHideUserContentParamsWithHTTPClient creates a new AdminHideUserContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminHideUserContentParamsWithHTTPClient(client *http.Client) *AdminHideUserContentParams {
	var ()
	return &AdminHideUserContentParams{
		HTTPClient: client,
	}
}

/*AdminHideUserContentParams contains all the parameters to send to the API endpoint
for the admin hide user content operation typically these are written to a http.Request
*/
type AdminHideUserContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsHideContentRequest
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin hide user content params
func (o *AdminHideUserContentParams) WithTimeout(timeout time.Duration) *AdminHideUserContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin hide user content params
func (o *AdminHideUserContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin hide user content params
func (o *AdminHideUserContentParams) WithContext(ctx context.Context) *AdminHideUserContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin hide user content params
func (o *AdminHideUserContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin hide user content params
func (o *AdminHideUserContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin hide user content params
func (o *AdminHideUserContentParams) WithHTTPClient(client *http.Client) *AdminHideUserContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin hide user content params
func (o *AdminHideUserContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin hide user content params
func (o *AdminHideUserContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminHideUserContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin hide user content params
func (o *AdminHideUserContentParams) WithBody(body *ugcclientmodels.ModelsHideContentRequest) *AdminHideUserContentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin hide user content params
func (o *AdminHideUserContentParams) SetBody(body *ugcclientmodels.ModelsHideContentRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the admin hide user content params
func (o *AdminHideUserContentParams) WithContentID(contentID string) *AdminHideUserContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin hide user content params
func (o *AdminHideUserContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin hide user content params
func (o *AdminHideUserContentParams) WithNamespace(namespace string) *AdminHideUserContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin hide user content params
func (o *AdminHideUserContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin hide user content params
func (o *AdminHideUserContentParams) WithUserID(userID string) *AdminHideUserContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin hide user content params
func (o *AdminHideUserContentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminHideUserContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
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
