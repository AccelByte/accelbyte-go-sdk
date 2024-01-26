// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_staging_content

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

// NewUpdateStagingContentParams creates a new UpdateStagingContentParams object
// with the default values initialized.
func NewUpdateStagingContentParams() *UpdateStagingContentParams {
	var ()
	return &UpdateStagingContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateStagingContentParamsWithTimeout creates a new UpdateStagingContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateStagingContentParamsWithTimeout(timeout time.Duration) *UpdateStagingContentParams {
	var ()
	return &UpdateStagingContentParams{

		timeout: timeout,
	}
}

// NewUpdateStagingContentParamsWithContext creates a new UpdateStagingContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateStagingContentParamsWithContext(ctx context.Context) *UpdateStagingContentParams {
	var ()
	return &UpdateStagingContentParams{

		Context: ctx,
	}
}

// NewUpdateStagingContentParamsWithHTTPClient creates a new UpdateStagingContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateStagingContentParamsWithHTTPClient(client *http.Client) *UpdateStagingContentParams {
	var ()
	return &UpdateStagingContentParams{
		HTTPClient: client,
	}
}

/*UpdateStagingContentParams contains all the parameters to send to the API endpoint
for the update staging content operation typically these are written to a http.Request
*/
type UpdateStagingContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateStagingContentRequest
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

// WithTimeout adds the timeout to the update staging content params
func (o *UpdateStagingContentParams) WithTimeout(timeout time.Duration) *UpdateStagingContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update staging content params
func (o *UpdateStagingContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update staging content params
func (o *UpdateStagingContentParams) WithContext(ctx context.Context) *UpdateStagingContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update staging content params
func (o *UpdateStagingContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update staging content params
func (o *UpdateStagingContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update staging content params
func (o *UpdateStagingContentParams) WithHTTPClient(client *http.Client) *UpdateStagingContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update staging content params
func (o *UpdateStagingContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update staging content params
func (o *UpdateStagingContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateStagingContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update staging content params
func (o *UpdateStagingContentParams) WithBody(body *ugcclientmodels.ModelsUpdateStagingContentRequest) *UpdateStagingContentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update staging content params
func (o *UpdateStagingContentParams) SetBody(body *ugcclientmodels.ModelsUpdateStagingContentRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the update staging content params
func (o *UpdateStagingContentParams) WithContentID(contentID string) *UpdateStagingContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the update staging content params
func (o *UpdateStagingContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the update staging content params
func (o *UpdateStagingContentParams) WithNamespace(namespace string) *UpdateStagingContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update staging content params
func (o *UpdateStagingContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update staging content params
func (o *UpdateStagingContentParams) WithUserID(userID string) *UpdateStagingContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update staging content params
func (o *UpdateStagingContentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateStagingContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
